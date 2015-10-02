# This will be our Mouse Party Game. By Jenna and Daphne.
# updated with no content

# In this class we will contain visual aspects, such as ASCII art
class Art
end

# In this class we will contain the visual aspects of the word
class Word
end

# In this class we will control the workings of the game
class Game
end

# Where the game is run from
def play_mouse_party
end

# word list is from http://www.desiquintans.com/nounlist
# "wordlist.txt" is saved in the same directory as this ruby file
words = open("wordlist.txt")


array_of_words = words.readlines

array_of_words.map! do |word|
  word.strip
end

rando = array_of_words[rand(0...array_of_words.length)]

while rando.length < 5 || rando.length > 7
  rando = array_of_words[rand(0...array_of_words.length)]
end

puts rando
words.close

mouse = """
.--,       .--,
( (  \\.---./ ) )
'.__/o   o\\__.'
   {=  ^  =}
    >  -  <
   /       \\
  //       \\\\
 //|   .   |\\\\
 \"'\\       /'\"_.-~^`'-.
    \\  _  /--'         `
  ___)( )(___
 (((__) (__)))
 """
puts mouse

cheese = """
   ____
  /|o  |
 /o|  o|
/o_|_o_|
"""

cheeses = [cheese, cheese]
puts cheese.class
