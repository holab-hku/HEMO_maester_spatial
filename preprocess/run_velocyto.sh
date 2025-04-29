#https://velocyto.org/velocyto.py/tutorial/cli.html#run10x-run-on-10x-chromium-sample

INPUT_ALN=[XXX] # input alignment folder
INPUT_REF=[XXX] # ref_transcriptome folder, requires mm10_rmsk.gtf, and gene.gtf file in https://velocyto.org/velocyto.py/tutorial/cli.html#run10x-run-on-10x-chromium-sample
#OUTPUT_DIR

docker run -it \
  -v ${INPUT_REF}:${INPUT_REF} \
  -v ${INPUT_ALN}:${INPUT_ALN} \
  mparikhbroad/velocyto:latest \
  velocyto run10x \
  -m ${INPUT_REF}/mm10_rmsk.gtf \
  ${INPUT_ALN} \
  ${INPUT_REF}/genes/genes.gtf
