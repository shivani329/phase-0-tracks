

class Game
	attr_accessor :guess, :guess_number, :game_over, :letters_guessed
def initialize(word)
	@right_word = word.downcase
	@word_arr = @right_word.split("")
	@guessed_array = Array.new(word.length) {false}
	@guess_number = @word_arr.length * 2
	@guess = 0
	@game_over = false
	@zero_left = false
	@letters_guessed = []
	@right_letters = []
end
def letter_guess(n
	@letters_guessed.push(n)
	@guess+=1
	for i in 0...@word_arr.length
		if n == @word_arr[i]
			@guessed_array[i] = true
		end
	end
	@guessed_array
end
def status
	current_status = []
	@guessed_array.each_with_index do |x,i|
			if x == false
				current_status.push("_ ")
			else
				current_status.push(@word_arr[i])
			end
	end
	current_status
end
def win
	win = false
	if (@guessed_array.include? false) == false
		@game_over = true
		puts "HELL YEAH! YOU WON!! THE CORRECT WORD WAS: #{@right_word}"
		won = true
	end
	win
end
end

puts "PLEASE ENTER A WORD:"
word = gets.chomp
game = Game.new(word)

	while game.guess < game.guess_number && game.game_over == false
		puts("Guess a letter")
		puts("So far, this is what you have guessed:")
		puts("You have made #{game.guess}/#{game.guess_number} guesses")
		
		p game.status.join("")

		guess = gets.chomp
		while game.letters_guessed.include? guess
			puts("You already guessed the letter #{guess}! Guess again!")
			guess = gets.chomp
		end
		game.letter_guess(guess)
		
		game.win
	end
	if game.game_over == false
		puts "AW $h!T, YOU LOSE!"
	end
end 