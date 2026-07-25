$ErrorActionPreference = "Stop"
$env:PICD_RESULT_DIR = "jcp_results_v6_0_4_rawfix"
$env:PICD_METHODS = "TwoStage-Proj"
$env:PICD_NUM_SEEDS = "5"
$env:PICD_ITERATIONS = "2000"
conda run -n hologpu python Main_exported.py *> (Join-Path $env:PICD_RESULT_DIR "rawfix_run.log")
