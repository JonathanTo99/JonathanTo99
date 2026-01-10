# Problem 1: Counting DNA Nucleotides

# Bro I know what DNA and nucleotides are already

raw_text = open("rosalind_dna.txt", "r").read()
A = raw_text.count("A")
C = raw_text.count("C")
G = raw_text.count("G")
T = raw_text.count("T")
print(A, C, G, T)
