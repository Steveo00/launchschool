names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# Running this code throws an error message because Ruby is trying to convert
# 'margaret' into an integer as the second line of code is trying to assign 
# 'jody' to the names array which nneds an integer for the index.
