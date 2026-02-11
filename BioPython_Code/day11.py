
from Bio.Blast import NCBIWWW
from Bio import SeqIO
import io

# sequence_data = "TCCATGAAAGCCAACAAATCCGCCTGGTGCTTTCAACGGCAACGGC"

# result_handle = NCBIWWW.qblast("blastn", "nt", sequence_data, format_type="XML")

# with open("h1.xml","w" ) as f:
#     f.write(result_handle.read())

from Bio.Blast import NCBIXML

with open("h1.xml") as file:

    blast_records = NCBIXML.parse(file)
    # print(blast_records.__next__())
    for record in blast_records:
        for alignment in record.alignments:
            for hsp in alignment.hsps:
                print("Hit ID:", alignment.hit_id)
                print("Length:", alignment.length)
                print("E-value:", hsp.expect)
                print("Identity:", hsp.identities)
                print("Alignment:")
                print(hsp.query)
                print(hsp.match)
                print(hsp.sbjct)
                print("-" * 40)