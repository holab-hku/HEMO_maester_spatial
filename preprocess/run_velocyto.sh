#https://velocyto.org/velocyto.py/tutorial/cli.html#run10x-run-on-10x-chromium-sample

INPUT_ALN=/autofs/bal31/jhsu/home/projects/sc/data/hemo_paper_larry/larry-maester-d4/sc/2_bam/
INPUT_REF=/autofs/bal31/jhsu/home/projects/sc/SpaceClone/ref_transcriptome/refdata-gex-GRCh38-2020-A
#OUTPUT_DIR

docker run -it \
  -v ${INPUT_REF}:${INPUT_REF} \
  -v ${INPUT_ALN}:${INPUT_ALN} \
  mparikhbroad/velocyto:latest \
  velocyto run10x \
  -m ${INPUT_REF}/mm10_rmsk.gtf \
  ${INPUT_ALN} \
  ${INPUT_REF}/genes/genes.gtf
