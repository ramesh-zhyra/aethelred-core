//! AETHELRED Enhanced PBFT Consensus Implementation

pub mod pbft;
pub mod types;
pub mod validator;

use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ConsensusConfig {
    pub validator_count: usize,
    pub fault_tolerance: f64,
    pub block_time: u64,
    pub slashing_enabled: bool,
}

impl Default for ConsensusConfig {
    fn default() -> Self {
        Self {
            validator_count: 100,
            fault_tolerance: 0.33,
            block_time: 5000, // 5 seconds
            slashing_enabled: true,
        }
    }
}
