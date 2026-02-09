
from Bio import Entrez
from Bio import SeqIO

Entrez.email="dhruv@gmail.com"

# handle = Entrez.efetch(
#     db="nucleotide",
#     id="NM_007294",
#     rettype="fasta",
#     retmode="text"
# )
# sequence = handle.read()
# # print(sequence)

# with open("example.fasta","w") as f:
#     f.write(sequence)

# handle = Entrez.efetch(
#     db="nucleotide",
#     id="NM_007294",
#     rettype="gb",
#     retmode="text"
# )
# genbank_data = handle.read()

# with open("example123.gb","w") as f:
#     f.write(genbank_data)


# for record in SeqIO.parse("example.fasta", "fasta"):
#     print("ID:", record.id)
#     print("Length:", len(record.seq))
#     print("Sequence:", record.seq)

# for record in SeqIO.parse("example123.gb", "genbank"):
#     print("Organism:", record.annotations["organism"])
#     print("Topology:", record.annotations["topology"])
#     print("Molecule_Type:", record.annotations["molecule_type"])
#     print("Sequence length:", len(record.seq))

# for feature in record.features:
#     # print("Feature type:", feature.type)
#     print(feature.type,sep=" ",end=" ")

# for feature in record.features:
#     if feature.type == "CDS":
#         print("Gene:", feature.qualifiers.get("gene"))
#         print("Product:", feature.qualifiers.get("product"))

SeqIO.convert("example123.gb", "genbank", "dhruvnew.fasta", "fasta")



