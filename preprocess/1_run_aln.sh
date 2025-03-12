# example of prepocess, step 1, single cell data alignment with cellranger
set -x;

# INPUT of FASTA, sample ID and transcriptome reference
FASTQ=/autofs/bal31/jhsu/home/projects/sc/data/hemo_paper_larry/larry-maester-d7/seq-D7/seq-maester/SugimuraRR_UCSO_CPOS-240805-RRS-24912a/SugimuraRR_UCSO_CPOS-240805-RRS-24912a/primary_seq
SAMPLE=D7-MAESTER
ID=D7-MAESTER
TRANS=/autofs/bal31/jhsu/home/projects/sc/SpaceClone/ref_transcriptome/refdata-gex-GRCh38-2020-A 

# OUTPUT DIR
OUT_DIR=/autofs/bal31/jhsu/home/projects/sc/data/hemo_paper_larry/larry-maester-d7/maester/2_bam/
mkdir -p ${OUT_DIR}

cellranger count --create-bam true --id ${ID} --fastqs=${FASTQ} --sample ${SAMPLE} --transcriptome ${TRANS} --output-dir ${OUT_DIR} |& tee ${O_OUT_DIR}/${ID}_${SAMPLE}_log

