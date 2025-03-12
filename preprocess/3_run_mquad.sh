# example of prepocess, step 2, MAESTER data find SNP with cell snp
set -x;

# run mquad to find informative variants
SAMPLE_ID=""
B_DIR=/autofs/bal31/jhsu/home/projects/sc/data/hemo_paper_larry/larry-maester-d7/maester/
I_DIR=${B_DIR}/3_vcf/${SAMPLE_ID}
O_DIR=${B_DIR}/4_mquad/${SAMPLE_ID}
mkdir -p ${O_DIR}
LOG=${O_DIR}/log
touch ${LOG}

# ca sc_py
# bash run_mquad.sh mcs_cs83 mgct_L86_L86 mgct_L98_L98 mos_os82
mquad -c ${I_DIR} -o ${O_DIR} -p 20 |& tee ${LOG}
cp ${I_DIR}/cellSNP.samples.tsv ${O_DIR} 
