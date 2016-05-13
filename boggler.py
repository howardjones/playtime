#!/bin/env python

"""Given a word, find all the contained words, orderd alphabetically, and by word length. 
   AKA boggle words or any number of mobile games
   
   mostly I wanted to try out a few itertools and comprehensions
   """

import itertools
import enchant

def boggler(input_string):
    d = enchant.Dict("en_US")

    # lower-case string, and sort the letters, so the output is in alphabetical order 
    # (itertools.permutations promises that)
    input_string = "".join(sorted(list(input_string.lower())))

    all_words = []
    for word_length in range(2,len(input_string)):
        words = ["".join(word) for word in itertools.permutations(input_string, word_length) if d.check("".join(word))]
        all_words.extend(words)
        
    return all_words


print boggler("amplify")

