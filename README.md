# CELL0019
This repository contains the bioinformatic pipeline used to analyse mouse colon organoid scRNA-seq data.  
Install all yml files. trellis_env.yml can be used to run most code, unless otherwise specified.  

Pipeline order
1. preprocessing.ipynb. This file includes data processing, integration and cell type annotation. file conversion.R is needed for cell type annotation.
2. figure 2.ipynb. Contains dimensionality reduction.
3. figure 3.ipynb. Contains MELD analysis.
4. figure 4.ipynb. Contains cell type analysis.
5. supplementary figures.ipynb. Contains gene signature scoring.
6. cytotrace preprocessing.ipynb. Must be run before developmental potential scoring.
7. figure 5.ipynb. Contains cell cycle phase, developmental potential (Cytotrace) and pathway scoring.

Tirosh_cell_cycle_genes_mouse.txt is the curated gene set for determining cell cycle phase.
