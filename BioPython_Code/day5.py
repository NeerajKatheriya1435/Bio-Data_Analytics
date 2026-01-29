from Bio.Seq import Seq
from Bio.SeqRecord import SeqRecord
from Bio.SeqFeature import SeqFeature, FeatureLocation
from Bio import SeqIO

str1=Seq("ATTGCTTGCTTATAGC")

record = SeqRecord(
    str1,
    id="SEQ001",
    name="ExampleSequence",
    description="This is a sample DNA sequence for GenBank file"
)

record.annotations["molecule_type"]="DNA"
record.annotations["topology"] = "linear"
record.annotations["organism"] = "Homo sapiens"
record.annotations["data_file_division"] = "BCT"
record.annotations["date"] = "26-JAN-2026"


# 4. Create FEATURES
# Source feature (whole sequence)

source_feature = SeqFeature(
FeatureLocation(0, len(str1)),
type="source",
qualifiers={"organism": ["Escherichia coli"]})

# Gene feature (1..15)

gene_feature = SeqFeature(
FeatureLocation(0, 15),
type="gene",
qualifiers={"gene": ["abcA"]})

# CDS feature (1..15)

cds_feature = SeqFeature(
FeatureLocation(0, 15),
type="CDS",
qualifiers={
    "gene": ["abcA"],
    "product": ["sample protein"],
    "codon_start": ["1"]
    })

record.features.append(source_feature)
record.features.append(gene_feature)
record.features.append(cds_feature)


SeqIO.write(record, "output1.gb", "genbank")