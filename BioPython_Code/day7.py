# from Bio import Entrez

# Entrez.email="dhruv123@gmail.com"

# searchReq=Entrez.esearch(
#     db="nucleotide",
#     term="BRCA1[Gene] AND Homo sapiens[Organism]"
# )

# result=Entrez.read(searchReq)

# print(result)


# from Bio import Entrez

# Entrez.email="dhruv123@gmail.com"

# searchReq=Entrez.efetch(
#     db="nucleotide",
#     id="NG_005905",
#     rettype="fasta",
#     retmode="text"
# )

# sequnece=searchReq.read()

# f=open("s1.fasta","w")
# f.write(sequnece)
# f.close()

from Bio import Entrez

Entrez.email="dhruv123@gmail.com"

searchReq=Entrez.efetch(
    db="nucleotide",
    id="NG_005905",
    rettype="gb",
    retmode="text"
)

genbank=searchReq.read()

print(genbank)

f=open("s2.gb","w")
f.write(genbank)
f.close()