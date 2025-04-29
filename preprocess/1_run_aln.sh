# example of prepocess, step 1, single cell data alignment with cellranger
set -x;

# INPUT of FASTA, sample ID and transcriptome reference
FASTQ=[XXX] # 10x input fastq folder, e.g. xxx/primary, 
SAMPLE=[XXX]  # input FASTQ sample name e.g, D7-MAESTER, when xxx/primary dataset has D1_MAESTER_1.fastq.gz
ID=[XXX]    # input FASTQ id, e.g. D7-MAESTER
TRANS=[XXX] # reference transciptome foder ,e.g. xxx/refdata-gex-GRCh38-2020-A 

# OUTPUT DIR
OUT_DIR=[XXX] # alignment output folder
mkdir -p ${OUT_DIR}

cellranger count --create-bam true --id ${ID} --fastqs=${FASTQ} --sample ${SAMPLE} --transcriptome ${TRANS} --output-dir ${OUT_DIR} |& tee ${O_OUT_DIR}/${ID}_${SAMPLE}_log

