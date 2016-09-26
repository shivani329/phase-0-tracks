class Santa

	attr_accessor :gender
	attr_reader :age, :ethnicity
	def initialize (gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0


	end

	def speak 
		puts "Ho, ho, ho! Haaaaapy Holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	#find name of reindeer in reindeer ranking and move it to the end 
	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking[@reindeer_ranking.count] = name 
		puts @reindeer_ranking
	end

end

santas = []
example_genders = ["agender", "female", "transgender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "French", "white", "Indian", "prefer not to say", "unicorn", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#driver code 
santa1 = Santa.new("transgender", "French")
santa1.speak
p santa1.gender
santa1.eat_milk_and_cookies("chocolate chip")
santa1.get_mad_at("Vixen")
p santa1.age
p santa1.celebrate_birthday
p santa1.celebrate_birthday
santa1.gender = "female"
p santa1.gender
