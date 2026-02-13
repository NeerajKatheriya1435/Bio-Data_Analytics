
# import Bio
# print(Bio.__version__)

# g1="ATGCAT"
# print(g1)

# from Bio.Seq import Seq
# from Bio.SeqUtils import seq3

# d1=Seq("TGCGTA")
# d2=seq3("TGCGTA")
# print(d1)

# print("Complement:", d1.complement())
# print("Complement:", d1.reverse_complement())

# print("Transcription (DNA to RNA):", d1.transcribe())
# print("Translation (RNA to Protein):", d2.translate(d2))
# print(type(d1))

# seq="""

# >Sequence_1 This is Human Fasta File DNA Structure
# ATGCGTACGTTAG

# >Sequence_2 This is not Human Fasta File DNA Structure
# CGTAGCTAGCTA

# """

# f1=open("FastaFile1.fasta","w")
# f1.write(seq)

from Bio import SeqIO

for record in SeqIO.parse("fasta2.fasta","fasta-pearson"):
    print("Fasta ID of Fisrt: ",record.id)
    print("Fasta description of Fisrt: ",record.description)
    print("Fasta seq of Fisrt: ",record.seq)
    print("Fasta length of Fisrt: ",(len(record)))
    print("-"*30)