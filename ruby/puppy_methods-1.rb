class Puppy 

	def initialize
		puts "Initializing new puppy instance..."
	end


	def fetch(toy)
		puts "I brought back the #{toy}"
		toy
	end

	def speak(num)
		num.times do 
			puts "woof"
		end
	end

	def roll_over
		puts "roll over"
	end

	def dog_years(human_years)
		human_years/7
	end

	def play_dead
		puts "...im dead"
	end

end

riley = Puppy.new
riley.fetch("ball")
riley.speak(3)
riley.roll_over
riley.dog_years(35)
riley.play_dead


class Cat

	def initialize 
		puts "Initializing new cat instance..."
	end

	def meow(num)
		num.times do
			puts "meow"
		end
	end

	def play(toy)
		puts "I'm playing with #{toy}"
		toy
	end

end

cats = []

50.times do 
	cats << Cat.new
end

cats.each do |cat|
	cat.meow(2)
	cat.play("mouse")
end

