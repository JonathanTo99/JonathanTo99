# AI Coding Agent Instructions

## Repository Overview

This is a research workspace (`research/`) for multi-language data analysis (Python + R).

## Key Architecture

### Research Workspace Structure
```
research/
├── data/            # Datasets (raw/, processed/ subdirs)
├── scripts/         # python/ and r/ subdirs for reusable code
├── plots/           # R scripts auto-save visualizations here
├── maintenance/     # Environment setup and validation scripts
└── docs/            # Documentation and research notes
```

### Environment Setup Philosophy
- **Python**: System Python installation (no virtual environments)
- **R**: System installation at `C:\Program Files\R\R-4.5.2\bin`, managed via PowerShell script
- **Cross-language workflows**: Python for data preprocessing, R for statistical modeling
- Both environments share data through `data/` folder

## Critical Developer Workflows

### Initial Setup
**Python setup:**
```powershell
python research/maintenance/setup_environment.py
```

**R environment validation:**
```powershell
.\research\maintenance\setup_r_environment.ps1 -TestEnvironment
```

### Environment Checks
- Python: Run `setup_environment.py` - creates `data/raw`, `data/processed`, `docs/figures` directories
- R: Run `environment_check.r` - validates packages, tests plotting, generates environment report in `docs/`

### Key R Packages
Essential: `ggplot2`, `ggprism`, `dplyr`, `viridis`
Optional tidyverse: `tidyr`, `readr`, `tibble`, `stringr`, `forcats`, `lubridate`, `purrr`

### Python Dependencies
Core packages: `pandas`, `numpy`, `matplotlib`, `seaborn`, `jupyter`

## Project-Specific Conventions

### File Organization
- R scripts use `here()` package for path management relative to workspace root
- R plots automatically saved to `plots/` directory with descriptive filenames
- Documentation lives in `research/docs/` with README.md as primary guide

### Environment Management
- R environment report auto-generated at `docs/r_environment_report.md` during checks
- Setup scripts handle missing directory creation automatically

## Shell Environment
- Default shell: **PowerShell** (pwsh.exe) on Windows
- R scripts executed via `Rscript.exe` (must be in PATH)
- Python via system installation

## Important Notes
- License: GPL-3.0 (open source but with copyleft requirements)
