# example of prepocess, step 2, MAESTER data find SNP with cell snp
set -x;

# get alignment and barcode from alignment
BAM=/autofs/bal31/jhsu/home/projects/sc/data/hemo_paper_larry/larry-maester-d7/maester/2_bam/outs/possorted_genome_bam.bam
BARCODE=/autofs/bal31/jhsu/home/projects/sc/data/hemo_paper_larry/larry-maester-d7/maester/2_bam/outs/filtered_feature_bc_matrix/barcodes.tsv.gz

# output dir
OUT_DIR=/autofs/bal31/jhsu/home/projects/sc/data/hemo_paper_larry/larry-maester-d7/maester/3_vcf/
#cellsnp-lite -s $BAM -b $BARCODE -O $OUT_DIR -p 10 --minMAF 0.1 --minCOUNT 20 --gzip --chrom chrM --genotype
#conda activate cellsnp
cellsnp-lite -s $BAM -b $BARCODE -O $OUT_DIR -p 20 --minMAF 0 --minCOUNT 1 --chrom chrM --genotype

