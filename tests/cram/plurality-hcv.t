
Run plurality on the small example file, and make sure the GFF and
CSV output is correct.


  $ export DATA=$TESTDIR/../data
  $ export INPUT=$DATA/hcv/aligned_reads.cmp.h5
  $ export REFERENCE=$DATA/hcv/HCV_Ref_For_187140.fasta
  $ variantCaller.py --algorithm=plurality -q 10 -r $REFERENCE -o variants.gff -o consensus.fa $INPUT

I like to show the head of the output files inline here so that glaringly obvious changes will
pop right out, but I verify that the files are exactly correct by looking at the md5 sums.

First, the variants.gff:

  $ cat variants.gff
  ##gff-version 3
  ##pacbio-variant-version 1.4
  ##date * (glob)
  ##feature-ontology http://song.cvs.sourceforge.net/*checkout*/song/ontology/sofa.obo?revision=1.12
  ##source GenomicConsensus * (glob)
  ##source-commandline * (glob)
  ##sequence-region 5primeEnd 1 156
  ##sequence-region 3primeEnd 1 386


Examine consensus output.  This is identical to the reference

  $ cat consensus.fa
  >5primeEnd|plurality
  GGAACCGGTGAGTACACCGGAATTGCCAGGACGACCGGGTCCTTTCGTGGATAAACCCGC
  TCAATGCCTGGAGATTTGGGCGTGCCCCCGCAAGACTGCTAGCCGAGTAGTGTTGGGTCG
  CGAAAGGCCTTGTGGTACTGCCTGATAGGGTGCTTG
  >3primeEnd|plurality
  TACCTGGTCATAGCCTCCGTGAAGGCTCTCAGGCTCGCTGCATCCTCCGGGACTCCCTGA
  CTTTCACAGATAACGACTAAGTCGTCGCCACACACGAGCATGGTGCAGTCCTGGAGCCCA
  GCGGCTCGACAGGCTGCTTTGGCCTTGATGTAGCAGGTGAGGGTGTTACCACAGCTGGTC
  GTCAGTACGCCGCTCGCGCGGCACCTGCGATAGCCGCAGTTTTCCCCCCTTGAATTAGTA
  AGAGGGCCCCCGACATAGAGCCTCTCGGTGAGGGACTTGATGGCCACGCGGGCTTGGGGG
  TCCAGGTCACAACATTGGTAAATTGCCTCCTCTGTACGGATATCGCTCTCAGTGACTGTG
  GAGTCAAAGCAGCGGGTATCATACGA