# Mitochondrial Variants Reveal Spatial Clonal Dynamics in Human Hematopoietic Organoids 

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause) 

Contact: Dr. Junhao Su, Prof. Joshua Ho

Email: jhsu@connect.hku.hk, jwkho@hku.hk

A multi-modal framework integrating LARRY barcoding, MAESTER mtDNA profiling, and spatial transcriptomics


<div align="center">

<img src="/figure/f1.png" width="75%" alt="Graphical Abstract">

</div>

## Overview

This repository provides **end-to-end computational workflows** for:

- **Synthetic lineage noise correction** through mtDNA variant validation
- **Spatial clonal dynamics reconstruction** in hematopoietic organoids
- **Multi-modal integration** of LARRY barcoding, MAESTER mtDNA profiling, and Visium spatial transcriptomics

  
## Installation

#### Core Analysis Environment

``` bash
# Create base environment
conda env create -f scanpy_env.yml
conda activate scanpy_env
pip install -r scanpy_env.txt
```

#### Cell Fate Prediction (Optional)
```bash
conda create -y -n cell2fate_env python=3.9
conda activate cell2fate_env
pip install git+https://github.com/BayraktarLab/cell2fate
```

#### Variant Calling Tools
```bash
conda install -c bioconda cellsnp-lite
pip install -U mquad
```

##  Pipeline Architecture

#### Preprocessing

| Script    | Function |
| -------- | ------- |
|preprocess/1_run_aln.sh	| Raw FASTQ processing & CellRanger-compatible alignment|
|preprocess/2_run_snp.sh	| Mitochondrial variant calling with cellsnp-lite| 
|preprocess/3_run_mquad.sh	| Informative SNP selection| 
|preprocess/LARRY_barcode.ipynb	| Barcode processing & clone assignment| 

#### Core Analysis

| Notebook    | Analysis |
| -------- | ------- |
|MAESTER_D4.ipynb	|	mtDNA clonal tracking with vireoSNP	|
|SC_LARRY_MAESTER_D4.ipynb		| Multi-modal analysis: Single-cell annotation - LARRY/MAESTER integration - Clone fate prediction	|

#### Spatial Modules

| Notebook    | Analysis |
| -------- | ------- |
|run_spatial_niche.ipynb	 | HEMO-specific: Combined spatial single-cell data with MAESTER mtDNA information for spatial SNP distribution finding and niche identification pipeline |
|run_SpatialDE.ipynb	 | Chondrosarcoma spatial analysis |


## Citation

If using this work, please cite:

  Xue Y, Chao Y, Lin X, et al. Single-cell mitochondrial variant enrichment resolved clonal tracking and spatial architecture in human embryonic hematopoiesis[J]. bioRxiv, 2023: 2023.09. 18.558215.

