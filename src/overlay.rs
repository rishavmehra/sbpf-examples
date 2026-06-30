use {
    crate::critical_path::CriticalPathResult,
    sbpf_ir::BlockId,
    sbpf_transform::CfgDumpOverlay,
    std::collections::{HashMap, HashSet},
};

/// DOT overlay that highlights the critical path in red and annotates each block
/// with its compute-unit cost.
///
/// This is exactly the kind of overlay Claire described — built once from
/// all per-function `CriticalPathResult`s and applied by `dump_cfg_with`.
pub struct CriticalPathOverlay {
    /// CU cost for every block across all functions.
    pub block_cu: HashMap<BlockId, u64>,
    /// All blocks that lie on any function's critical path.
    pub critical_blocks: HashSet<BlockId>,
    /// Per function-index → that function's total critical-path CU.
    pub function_total_cu: HashMap<usize, u64>,
}

impl CriticalPathOverlay {
    /// Build from the indexed list of per-function results produced by `critical_path()`.
    pub fn from_results(indexed: &[(usize, &CriticalPathResult)]) -> Self {
        let mut block_cu = HashMap::new();
        let mut critical_blocks = HashSet::new();
        let mut function_total_cu = HashMap::new();

        for &(function_id, result) in indexed {
            block_cu.extend(result.block_cu.iter().map(|(&k, &v)| (k, v)));
            critical_blocks.extend(result.path.iter().copied());
            function_total_cu.insert(function_id, result.total_cu);
        }

        CriticalPathOverlay {
            block_cu,
            critical_blocks,
            function_total_cu,
        }
    }
}

impl CfgDumpOverlay for CriticalPathOverlay {
    fn block_extra_label(&self, block_id: BlockId) -> String {
        match self.block_cu.get(&block_id) {
            Some(cu) => format!("CU: {cu}"),
            None => String::new(),
        }
    }

    fn block_attrs(&self, block_id: BlockId) -> Vec<(&'static str, String)> {
        if self.critical_blocks.contains(&block_id) {
            vec![
                ("style", "filled,bold".into()),
                ("fillcolor", "#e74c3c".into()),
                ("penwidth", "2".into()),
            ]
        } else {
            vec![]
        }
    }

    fn function_extra_label(&self, function_id: usize) -> String {
        match self.function_total_cu.get(&function_id) {
            Some(cu) => format!("critical CU: {cu}"),
            None => String::new(),
        }
    }
}
