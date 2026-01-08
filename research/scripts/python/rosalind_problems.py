# Rosalind Problem 1: Installing Python

'''
import this

print("Hello, Rosalind!")
'''

# Rosalind Problem 2: Variables and Some Arithmetic

'''
a = 3
b = 5
s = 3**2 + 5**2

print(s)
'''

# Rosalind Problem 3: Strings and Lists

'''
list = '6U4lLNUCf0SDJPhrynomerusldexterKou8oQDZ7Xpqb9C09I4THr70fwfjZmjlgE8flnYCdvc4kMms8FLn6eVpZ9j0bmSCggu4cjFx9lYQtAL1qbhrnYtybhmszIrE5hdPRQA5pwOYaREVyOHTuvyTFiKXWL4ZeqZRjT'
int = [13, 23, 25, 30]

print(list[13:24] + " " + list[25:31])
'''

# Rosalind Problem 4: Conditions and Loops

'''
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

a = 4873
b = 9627

total_sum = 0

for i in range(a, b + 1):
    if i % 2 == 1:
        total_sum += i
print(total_sum)
'''

# Rosalind Problem 5: Working with Files

f = open("rosalind_ini5.txt", "r")

line_number = 1