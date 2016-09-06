class Santa

	

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(name, gender, ethnicity, age)
		@name=name
		@gender=gender
		@ethnicity=ethnicity
		@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age=age
		puts "Initializing Santa instance..."
		puts "Name: #{@name}"
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age}"
	
	
	end
end

test = Santa.new("jack", "transgender", "Indian", "5")
test.eat_milk_and_cookies("choco chip cookie")
test.speak



