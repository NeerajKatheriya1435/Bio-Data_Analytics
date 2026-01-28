
# import Bio
# from Bio.Seq import Seq

from Bio import SeqIO
# # Read the FASTA file

# for record in SeqIO.parse("sequence.fasta", "fasta"):
#     print("ID:", record.id) # Sequence name
#     print("Sequence:", record.seq) # Sequence letters
#     print("Length:", len(record)) # Sequence length
#     print("---"*10)

# Create a FASTA file with multiple sequences

sequences = {
"Sequence_1": "ATGCGTACGTTAG",
"Sequence_2": "CGTAGCTAGCTA",
"Sequence_3": "ATGGGCTTAA"
}

# with open("example123.fasta", "w") as file:
#     for name, seq in sequences.items():
#         file.write(f">{name}\n{seq}\n")

# with open("file12.fasta","w") as f:
#     for key,value in sequences.items():
#         f.write(f">{key}\n{value}\n")

# print("File Write SuccessFully!!!")

def atCalc(seq):
    # str1=str(seq)
    str2=seq.upper()
    findAT=((str2.count("A")+str2.count("T"))*100)/len(str2)
    return findAT

def gcCalc(seq):
    str1=str(seq)
    str2=str1.upper()
    findAT=((str2.count("G")+str2.count("C"))*100)/len(str2)
    return findAT

for record in SeqIO.parse("file12.fasta", "fasta"):
    print("ID:", record.id) # Sequence name
    print("Sequence:", record.seq) # Sequence letters
    print("Length:", len(record)) # Sequence length
    print(f"The AT Percentage is: {atCalc(record.seq):.2f}%")
    print(f"The GC Percentage is: {gcCalc(record.seq):.3f}%")
    print("---"*10)



