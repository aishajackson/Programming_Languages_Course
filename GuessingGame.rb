#Guessing Game
#Aisha Jackson

#!/usr/bin/ruby

puts "Hello user! We are going to play a guessing game! You have up to ten tries to guess the correct number between 0 and 100. \n"

r = rand(100)

i = 1
while i < 11 do
  puts "Please enter your guess.\n"
  guess = gets.chomp
  if guess == r
    puts "Congrats! The number is" + r + "You guessed it in" + i + "try(ies)! \n"
  end
  if guess > r
    puts "You are incorrect! You are too high. \n"
  end
  if guess < r
    puts "You are incorrect! You are too low. \n"
  end
  if i == 11
    puts "You are out of guesses! The number is" + r + "Try again next time \n"
  end

  i = i + 1
end
