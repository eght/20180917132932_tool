import random
# python 3.7.0
# date: 2019.7.5
# effect: random choose words with specified length from a file
# document: Pick a random big word from a list of words using Python
# version: 3
# usage: F5 Run Module
# url: https://codereview.stackexchange.com/questions/183784/pick-a-random-big-word-from-a-list-of-words-using-python

def goal_word(min_length=7, filename="words.txt"):
    min_line_length = min_length + 1
    with open(filename) as wordbook:
        large_words = [line for line in wordbook if len(line) >= min_line_length]
    if large_words:
        return random.choice(large_words).rstrip('\n')
    else:
        raise ValueError("No word found with at least %s characters." % min_length)


print(goal_word(2)) # more than 2 characters
print()
print(goal_word(2)) 
print()
print(goal_word(2)) 
print()
print(goal_word(7)) # more than 15 characters
# jauntily
# print(goal_word(15)) # more than 15 characters
# insurrectionist's
# print(goal_word(30))
# ValueError: No word found with at least 30 characters.
