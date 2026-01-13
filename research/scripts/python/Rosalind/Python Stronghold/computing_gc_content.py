# Problem 4: Computing GC Content

# Pseudocode:
'''
1. Read the FASTA file and parse the sequences in each line. Consider the lines starting with '>' as headers and the subsequent lines as sequences.
2. For each line, count the instances where G and C appear. Add these counts to get the total GC count for that sequence.
3. Calculate the GC content percentage using the formula: (GC count / total length of the sequence) * 100. 
4. Record the sequence ID that has the highest percentage of GC content along with the percentage value. 
5. Print the sequence ID and the highest GC content percentage. 
'''

current_ID = ""
current_sequence = ""
fasta_ID = {}

with open("rosalind_fasta.txt") as dna_fasta:
    for line in dna_fasta:
        if line.startswith(">"):
            current_ID = line.lstrip(">")
            if len(fasta_ID) == 0:
                fasta_ID[current_ID] = current_sequence
            else: 
                fasta_ID[current_ID] = current_sequence
        else:
            current_sequence += line.strip()
