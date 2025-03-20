# Mitochondrial variants correct synthetic lineage noise and uncover spatial clonal dynamics in human hematopoietic organoids

## Introduction
This repository contains the code and tools for a comprehensive analysis integrating LARRY barcoding and MAESTER with endogenous mitochondrial DNA (mtDNA) variant profiling in human hematopoietic embryonic organoids (HEMOs). The study leverages mitochondrial variants to correct synthetic lineage noise and uncover spatial clonal dynamics, providing deeper insights into hematopoietic development and clonal behaviour.

<div align="center">
<img src="/figure/f1.png" height = "120" alt="F1">
</a>
</div>

## Installation

```
#install single cell and Larry analysis package

conda env create -f scanpy_env.yml
conda activate scanpy_env
pip install -r scanpy_env.txt

### install cell2fate for cell fate analysis
conda create -y -n cell2fate_env python=3.9
conda activate cell2fate_env
pip install git+https://github.com/BayraktarLab/cell2fate


# for preprocess/2_run_snp.sh and preprocess/3_run_mquad.sh
# install MAESTER analysis package
conda install -c bioconda cellsnp-lite
pip install -U mquad
```

### Code structure
```
# preporcess, single cell read alignment
preprocess/1_run_aln.sh
# preprocess, MAESTER SNP finding
preprocess/2_run_snp.sh
# preprocess, MAESTER informative SNP finding
preprocess/3_run_mquad.sh
# preprocess, LARRY barcode and clone finding
preprocess/LARRY_barcode.ipynb

# D4 dataset MAESTER clone analysis
MAESTER_D4.ipynb
# D4 dataset cell fate analysis, combination of LARRY and MAESTER data
SC_LARRY_MAESTER_D4.ipynb

# Analysis of spatial Visium-MAESTER data (chondrosarcoma sample)
run_SpatialDE.ipynb

# Analysis of HEMO Spatial Visuium-MAESTER data
run_spatial_niche.ipynb
```
