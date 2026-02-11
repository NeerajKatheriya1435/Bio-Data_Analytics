from Bio.Align import PairwiseAligner

aligner = PairwiseAligner()

# seq1 = "ATGCTATGCCATCCTA"
# seq2 = "ATGCATTAACCAGGAT"

# alignments = aligner.align(seq1, seq2)

# print(alignments[0])

# list1=[5,8,6]

aligner.mode = "local"

seq1 = "ATGCTAGCTA"
seq2 = "GCTAGC"

alignments = aligner.align(seq1, seq2)

print(alignments[0])
