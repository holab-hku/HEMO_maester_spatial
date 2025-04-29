# example of prepocess, step 2, MAESTER data find SNP with cell snp
set -x;

# get alignment and barcode from alignment
BAM=[XXX] # input bam file, e.g. xxx/outs/possorted_genome_bam.bam
BARCODE=[XXX] # input bam file's barcode, e.g. xxx/outs/filtered_feature_bc_matrix/barcodes.tsv.gz

# output dir
OUT_DIR=[XXX] # VCF output folder
cellsnp-lite -s $BAM -b $BARCODE -O $OUT_DIR -p 20 --minMAF 0 --minCOUNT 1 --chrom chrM --genotype

