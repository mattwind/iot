import os

# write data
f = open('data.txt', 'w')
f.write('some data')
f.close()

# read data
f = open('data.txt')
f.read()
f.close()

# view files
os.listdir()

# remove
os.remove('data.txt')
