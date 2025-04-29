# example of prepocess, step 2, MAESTER data find SNP with cell snp
set -x;

# run mquad to find informative variants
SAMPLE_ID=""
I_DIR=[XXX] # vcf input folder form 2_run_snp.sh
O_DIR=[XXX] # mquad output folder

mkdir -p ${O_DIR}
LOG=${O_DIR}/log
touch ${LOG}

mquad -c ${I_DIR} -o ${O_DIR} -p 20 |& tee ${LOG}
cp ${I_DIR}/cellSNP.samples.tsv ${O_DIR} 
