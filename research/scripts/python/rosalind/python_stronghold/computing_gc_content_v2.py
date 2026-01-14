# Problem 4: Computing GC Content

# Pseudocode:
'''
1. Read the FASTA file and parse the sequences in each line. Consider the lines starting with '>' as headers and the subsequent lines as sequences.
2. For each line, count the instances where G and C appear. Add these counts to get the total GC count for that sequence.
3. Calculate the GC content percentage using the formula: (GC count / total length of the sequence) * 100. 
4. Record the sequence ID that has the highest percentage of GC content along with the percentage value. 
5. Print the sequence ID and the highest GC content percentage. 
'''

# Program: 
# Revised and a more simple version using for loops

from collections import Counter

fasta_ID = {}
current_ID = ""

# 1. The Parser
with open("rosalind_gc.txt") as dna_fasta: # Opens the file
    for line in dna_fasta: # Check each line in the file
        if line.startswith(">"): # If the line starts with ">", its an ID
            current_ID = line.strip().lstrip(">") # Strip the ID of its ">" and any other potential whitespace
            fasta_ID[current_ID] = "" # Adds the ID to the dictionary
        else:
            fasta_ID[current_ID] += line.strip() # If the line doesn't start with a ">", then its a sequence and we'll glue it to the ID

# 2. The Calculator
# We need variables to keep track of the winner as we look at them one by one
best_id = "" # Who's the winner? 
highest_gc = 0.0 # What is the highest GC count? 

# We manually pull each ID out of the dictionary
for seq_id in fasta_ID: 
    
    # A. Get the explicit Input for this round
    current_dna_string = fasta_ID[seq_id]
    
    # B. Calculate the GC (Modular logic inline)
    counts = Counter(current_dna_string)
    gc_count = counts["G"] + counts["C"]
    
    # Explicitly divide by the length of the current string
    current_gc_percentage = (gc_count / len(current_dna_string)) * 100
    
    # C. Compare Output
    # If this one is better than our current best, update the record
    if current_gc_percentage > highest_gc:
        highest_gc = current_gc_percentage
        best_id = seq_id

# 3. The Result 
print(best_id)
print(highest_gc)
