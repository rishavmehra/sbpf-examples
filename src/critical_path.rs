use {
    sbpf_ir::{BlockId, Cfg, CfgFunction, CycleError},
    std::collections::{HashMap, HashSet},
};

#[derive(Debug, Clone)]
pub struct CriticalPathResult {
    pub total_cu: u64,
    /// Blocks on the critical (longest) path, in order from entry to exit.
    pub path: Vec<BlockId>,
    /// Compute-unit cost of every block in the function (1 CU per instruction).
    pub block_cu: HashMap<BlockId, u64>,
}

#[derive(Debug)]
pub enum CriticalPathError {
    Cycle(CycleError),
}

impl std::fmt::Display for CriticalPathError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            CriticalPathError::Cycle(e) => write!(f, "{e}"),
        }
    }
}

impl From<CycleError> for CriticalPathError {
    fn from(e: CycleError) -> Self {
        CriticalPathError::Cycle(e)
    }
}

/// Returns one result per function (indexed parallel to `cfg.functions()`).
pub fn critical_path(cfg: &Cfg) -> Vec<Result<CriticalPathResult, CriticalPathError>> {
    cfg.functions()
        .iter()
        .map(|function| critical_path_for_function(cfg, function))
        .collect()
}

fn critical_path_for_function(
    cfg: &Cfg,
    function: &CfgFunction,
) -> Result<CriticalPathResult, CriticalPathError> {
    let order = cfg.topological_sort(function)?;

    // 1 CU per instruction in the block
    let block_cu: HashMap<BlockId, u64> = function
        .block_ids()
        .iter()
        .zip(function.blocks().iter())
        .map(|(&id, block)| (id, block.instructions().len() as u64))
        .collect();

    let block_set: HashSet<BlockId> = function.block_ids().iter().copied().collect();

    // dp[block] = longest weighted path from any entry to this block (inclusive)
    let mut dp: HashMap<BlockId, u64> = HashMap::new();
    let mut prev: HashMap<BlockId, Option<BlockId>> = HashMap::new();

    for &block_id in &order {
        let self_cost = block_cu[&block_id];
        let best_pred = cfg
            .predecessors(block_id)
            .iter()
            .filter(|&&pred| block_set.contains(&pred))
            .map(|&pred| (pred, dp.get(&pred).copied().unwrap_or(0)))
            .max_by_key(|&(_, cost)| cost);

        let (cost, from) = match best_pred {
            Some((pred_id, pred_cost)) => (pred_cost + self_cost, Some(pred_id)),
            None => (self_cost, None),
        };

        dp.insert(block_id, cost);
        prev.insert(block_id, from);
    }

    let (&end_block, &total_cu) = dp
        .iter()
        .max_by_key(|&(_, cost)| cost)
        .unwrap_or((&0, &0));

    // Walk prev-pointers back to reconstruct the path
    let mut path = Vec::new();
    let mut current = Some(end_block);
    while let Some(block_id) = current {
        path.push(block_id);
        current = prev.get(&block_id).copied().flatten();
    }
    path.reverse();

    Ok(CriticalPathResult {
        total_cu,
        path,
        block_cu,
    })
}
