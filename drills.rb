#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'

def say_hello
  return 'hello'
end

#echo
  # returns the input string

def echo(string)
  return string
end

#eddie_izzards_height
  # calculates Eddie Izzards height (67in)
  # and takes into account the height of his heel (default: 0in)

def eddie_izzards_height(heel_height = 0)
    return heel_height + 67
end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function

def how_many_args(*parameters)
  #splat operator lets you put in numerous parameters
  
  parameters.count
  #count method will count number of parameters  
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments

def find_answer(**kwargs)
  kwargs[:answer]
end
#Looked at the solution for find_answer 
#Still fuzzy on the concept of keyword argument

##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # returns the first letter of the word
  # lowercases the first letter of the word

def first_char(word)
  #word.downcase
  return word[0].downcase
end

#polly_wanna
  # echoes the original word
  # repeats the original word 3 times

def polly_wanna(word)
  return word * 3
end

#count_chars
  # returns the number of characters in a string

def count_chars(word)
  #return word.size
  return word.length
  #return word.count .count method doesn't work here
end

#yell
  # convert the message to uppercase
  # adds an exclamation point to the end of the message

def yell(word)
  return word.upcase + "!"
end

#to_telegram
  # replaces periods with ' STOP'

def to_telegram(phrase)
  return phrase.gsub('.', ' STOP')
end

#spell_out
  # returns the input string, with characters seperated by dashes
  # converts the string to lowercase

def spell_out(word)
  return word.downcase.split('').join('-')
end

#seperate
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)

def seperate(word, seperate = '-')
  return word.downcase.split('').join(seperate)
end

#croon
  # seperates word characters with dashes
  # preserves whitespace between words

def croon(phrase)
  phrase.split(' ').map {|word| word.split("").join("-") }.join(" ")
end

#Looked at solutions for this one

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case

def palindrome_word?(word)
  no_case_word = word.downcase
  return no_case_word == no_case_word.reverse
end

#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation

def palindrome_sentence?(phrase)
  normalized = phrase.gsub(/[^a-z]/i, "").downcase
  #Looked at solutions, gsub is replacing all whitespace and
  #punctuation I believe
  #normalized is now just a regular string
  return normalized == normalized.reverse
end

#is_vowel
  # determines whether a given character is a vowel
  # ignores case
  # handles weird inputs gracefully

def is_vowel(phrase)
  return phrase.is_a?(String) && !!phrase.match(/[aeiou]/i)
end

#Looked at solutions

#add_period
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present

def add_period(input)
  "!?.".include?(input[-1]) ? input : input + "."
end

#Looked at solutions

###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # counts the spaces in a string

def count_spaces(string)
  counter = 0
  string.each_char do |char|
  #Essentially this is a for each loop
    if char == ' '
      counter += 1
      #doesn't seem like counter++ works
    end
  end
  return counter
end

#string_lengths
  # converts a list of strings to a list of string lengths

def string_lengths(string_list)
  return string_list.map {|string| string.length }
end

#remove_falsy_values
  # filters out falsy values from a list

def remove_falsy_values(list)
  list.select { |item| !!item }
end

#Looked at solutions for this one

#exclude_last
  # removes the last item from an array
  # removes the last item from a string

def exclude_last(item)
  return item[0..-2]
end

#exclude_first
  # removes the first item from an array
  # removes the first character from a string
  # does not alter the original input (non-destructive)

def exclude_first(item)
  return item[1..-1]
end

#exclude_ends
  # removes the first and last items from an array
  # removes the first and last characters from a string

def exclude_ends(item)
  return item[1..-2]
end

#select_every_even
  # returns a list of even-indexed items

def select_every_even(item)
  # return item.select_every_even
  # Hmm that didn't work
end

#select_every_odd
  # returns a list of odd-indexed items

#select_every_n
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1

#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol

##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # returns an array containing every integer from 0 to n
  # rounds off decimals

def count_to(n)
end

#is_integer?
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

#is_prime?
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers

#primes_less_than
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

#iterative_factorial
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates factorial



##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # counts how many times each character appears in a string
  # ignores case

#word_count
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z

#most_frequent_word
  # finds the word in a string that appears with the most frequency
