# Problem 1: Installing Python

'''
# Python's philosophy! 
import this

# Rite of passage for Python learners :)
print("Hello, Rosalind!")
'''

# Problem 2: Variables and Some Arithmetic

'''
Tutorial:

a = 324
b = 24
c = a - b
  print ('a - b is', c)

a = 'Rosalind'
b = 'Franklin'
c = '!'
  print (a + ' ' + b + c*3)

Program: 

# This is a simple math calculation that can be done in Python
a = 3
b = 5
s = 3**2 + 5**2

print(s)
'''

# Problem 3: Strings and Lists

'''
Tutorial:

tea_party = ['March Hare', 'Hatter', 'Dormouse', 'Alice']
  print(tea_party[2])

tea_party[1] = 'Cheshire Cat'
  print(tea_party)

tea_party.append('Jabberwocky')
  print(tea_party)

a = 'flimsy'
b = 'miserable'
c = b[0:1] + a[2:]
  print (c)

Program:

# Pay attention to the indices. Make sure that you add 1 to the final number to make it inclusive
list = '6U4lLNUCf0SDJPhrynomerusldexterKou8oQDZ7Xpqb9C09I4THr70fwfjZmjlgE8flnYCdvc4kMms8FLn6eVpZ9j0bmSCggu4cjFx9lYQtAL1qbhrnYtybhmszIrE5hdPRQA5pwOYaREVyOHTuvyTFiKXWL4ZeqZRjT'
int = [13, 23, 25, 30]

print(list[13:24] + " " + list[25:31])
'''

# Problem 4: Conditions and Loops

'''
Tutorial:

a = 42
if a < 10:
  print ('the number is less than 10')
else:
  print ('the number is greater or equal to 10')

if a + b == 4:
  print('printed when a + b equals four')
print('always printed')

greetings = 1
while greetings <= 3:
  print ('Hello! ' * greetings)
  greetings = greetings + 1

greetings = 1
while greetings <= 3:
  print ('Hello! ' * greetings)
  greetings = greetings + 0 # This will create an infinite loop

names = ['Alice', 'Bob', 'Charlie', 'Diana']
for name in names:
  print("Hello, " + name + "!")

n = 10
for i in range(n):
  print i

print(list(range(5, 12)))

Program:

# 1. Replace these numbers with the ones from your dataset
a = 4873
b = 9627

# 2. Initialize a variable to keep track of the sum
total_sum = 0

# 3. Loop through the numbers
# We use 'b + 1' because range stops BEFORE the last number.
for i in range(a, b + 1):

  # Check if the number is odd
  # The % operator is "modulo" (it gives the remainder).
  # If a number divided by 2 has a remainder of 1, it is odd.
  if i % 2 == 1:
    total_sum += i

# 4. Print the final result
print(total_sum)
'''

# Problem 5: Working with Files

'''
Tutorial: 

f = open('input.txt', 'r') # r = read mode, w = write mode, a = append mode

for line in f:
  print line

f = open('output.txt', 'w')
f.write('Any data you want to write into file')

inscription = ['Rosalind Elsie Franklin ', 1920, 1958]
s = str(inscription)
f.write(s)

for i in inscription:
  f.write(str(i) + '\n')

Program: 

# 1. Read all lines into a list at once
f = open("rosalind_ini5.txt", "r").readlines()

# 2. Slice: Start at index 1, go to end, step by 2
# This gives us [Line 2, Line 4, Line 6...]
target_lines = f[1::2]

# 3. Print them
for line in target_lines:
  print(line.strip())
'''

# Problem 6: Dictionaries

'''
Tutorial: 

phones = {'Zoe':'232-43-58', 'Alice':'165-88-56'}
  print (phones['Zoe'])

phones['Zoe'] = '658-99-55'
phones['Bill'] = '342-18-25'
  print (phones)

d = {}
d['key'] = 1
d['Key'] = 2
d['KEY'] = 3
  print (d)

if 'Peter' in phones:
  print("We know Peter's phone")
else:
  print("We don't know Peter's phone")

phones = {'Zoe':'232-43-58', 'Alice':'165-88-56'}
del phones['Zoe']
  print (phones)

Pseudo code: 

We will build a dictionary from scratch.

1. Split the sentence into a list of words.

2. Loop through every word.

3. If it is a new word, start the count at 1. 

4. If we have seen the word before, add +1 to its count.

Program: 

raw_text = open("rosalind_ini6.txt", "r").read() # This loads the file's content and makes it readable

words_list = raw_text.split() # This is the string that we need to process into individual words

word_counts = {} # empty dictionary that we can add words to

# Counting processed string as a list and checking if the word is indeed in the list
for word in words_list: 
  # If the word is seen for the first time, set its word count to 1 in the dictionary
  if word not in word_counts: 
    word_counts[word] = 1 
  # Add 1 to the word count in the dictionary if the word is indeed already there
  else:
    word_counts[word] += 1

# For every key and value in the word_counts dictionary, we will print out the key and value
for key, value in word_counts.items():
  print(key, value)
'''
