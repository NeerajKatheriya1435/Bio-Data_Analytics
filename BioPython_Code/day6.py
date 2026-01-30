from Bio import Entrez
Entrez.email = "neerajkatheriya1436@gmail.com"


# handle = Entrez.esearch(
#     db="nucleotide",
#     term="BRCA1[Gene] AND Homo sapiens[Organism]"
# )
# result = Entrez.read(handle)
# print(result)

handle = Entrez.efetch(
    db="nucleotide",
    id="NM_007294",
    rettype="fasta",
    retmode="text"
)
sequence = handle.read()
print(sequence)
