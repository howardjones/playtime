#!/bin/env python

# book-mutator.py by @anotherhowie
# automatically generate #RemoveALetterSpoilABook entries
# lucky for you I didn't hook it up to python-twitter

import enchant
import csv

unfunny_new_words = ['te', 'th']

d = enchant.Dict("en_US")

# input is a CSV file of title, author rows (we don't use the author,
# that's just the format of the first list I found
with file("1000books.csv") as f:
    bookreader = csv.reader(f,quoting=csv.QUOTE_ALL)

    for row in bookreader:
        title, author = row

        # remove any wikilink and turn 8-bit funkiness into something that won't make enchant ill        
        title = title.split('|')[-1].decode("latin-1").encode("ascii", "ignore")
        author = author.split('|')[-1]

        print(title)

        words = title.split(' ')

        # for each word in turn...
        for m in range(0,len(words)):
            word = words[m]

            # remove each character in turn and see if the result is a word
            for n in range(0,len(word)):
                new_word = word[:n] + word[n+1:]

                # if it is interesting, print it
                # but enchant pukes on empty strings, and single letters aren't really interesting
                if len(new_word) > 1 and d.check(new_word):
                    if new_word.lower() not in unfunny_new_words:
                        new_title = words[:]
                        new_title[m] = new_word
                        
                        print "    " + " ".join(new_title)
