words = [["c","a","t","s"], ["y","e","a","r"],["t","i","r","e"]]
word = words.sample
wrongGuessesLeft = 7
correctGuesses = []
guessed_letters = []
puts "_ _ _ _"
endWord = "_ _ _ _"

while !(wrongGuessesLeft == 0 or correctGuesses.size == 4)
  puts "Guess a letter"
  guess = gets.chomp
    if guess.size>1
      puts "Invalid guess, guess again"
    elsif !(word.include? guess)
      puts "That's not in the word, guess again"
      wrongGuessesLeft -= 1
      puts "You have #{wrongGuessesLeft.to_i} wrong guesses left"
    # else
    #   # guessed_letters.push(guess)
    elsif word.include? guess
      puts "Correct Guess"
      correctGuesses.push(guess)

      if guess == word[0]
        # puts "c _ _ _"
        endWord[0] = guess
        puts "#{endWord}"
      elsif guess == word[1]
        # puts "_ a _ _"
        endWord[2] = guess
        puts "#{endWord}"
      elsif guess == word[2]
        # puts "_ _ t _"
        endWord[4] = guess
        puts "#{endWord}"
      elsif guess == word[3]
        # puts "_ _ _ s"
        endWord[6] = guess
        puts "#{endWord}"
      end
    end
end
if wrongGuessesLeft == 0
  puts "sorry, You ran out of guesses".upcase
elsif correctGuesses.size == 4
  puts "#{word}".upcase
  puts "congrats, You guessed the word!".upcase
end
# puts "Ran out of guesses" or puts "Your guessed the word"

    # puts "cats"
    # puts "Congrats you guessed the word"
#   end
# end
    # else
    #     puts "That's not a letter"
    #     wrongGuessesLeft -= 1
#     end
#   end
#   end
# end

# def include(word)
# while !(wrongGuessesLeft >= 0)
#   puts "Guess a letter"
#   guess = gets.chomp
#     # while !(word.include? guess or guess.size == 1)
#     #   puts "Wrong guess, guess again"
#     #   guess = gets.chomp
#       while (word.include? guess)
#         if guess == "c"
#           puts "Correct guess, c is the first letter"
#           puts "guess another letter"
#           guess = gets.chomp
#         elsif guess == "a"
#           puts "Correct guess, a is the second letter guess again"
#           puts "guess another letter"
#           guess = gets.chomp
#         elsif guess == "t"
#           puts "Correct guess, t is the third letter guess again"
#           puts "guess another letter"
#           guess = gets.chomp
#         elsif guess == "s"
#           puts "Correct guess, s is the last letter guess again"
#           puts "guess another letter"
#           guess = gets.chomp
#         else
#           curWrongGuesses += 1
#           puts "That is not a letter in the word, guess again "
#         end
#       end
# end
# puts "Out of guesses"


# while (wrongGuessesLeft >= 0 or correctGuesses <= word.size)
#   puts "Guess a letter"
#   guess = gets.chomp
#   while !(correctGuesses == word.size )
#     if word.include? guess
#       puts "correct guess"
#       correctGuesses += 1
#       puts "Guess another letter"
#       guess = gets.chomp
#     # if guess == "c"
#     #   puts "Correct guess, c is the first letter"
#     #   puts "guess another letter"
#     #   guess = gets.chomp
#     # elsif guess == "a"
#     #   puts "Correct guess, a is the second letter"
#     #   puts "guess another letter"
#     #   guess = gets.chomp
#     # elsif guess == "t"
#     #   puts "Correct guess, t is the third letter"
#     #   puts "guess another letter"
#     #   guess = gets.chomp
#     # elsif guess == "s"
#     #   puts "Correct guess, s is the last letter"
#     #   puts "guess another letter"
#     #   guess = gets.chomp
#     else
#       puts "wrong guess, guess again"
#       wrongGuessesLeft -= 1
#       puts "you have #{wrongGuessesLeft.to_i} guesses left"
#       guess = gets.chomp
#     end
#   end
# end
# if correctGuesses == 4
#   puts "You guessed the word"
# else
#   puts "you have no more guesses left"
# end
