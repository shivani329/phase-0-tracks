class Santa

	attr_reader :name,:ethnicity,:home,:gender,:age
	attr_accessor :gender,:ethnicity,:name,:home

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize(name, location, gender, ethnicity, age)
		@name=name
		@gender=gender
		@ethnicity=ethnicity
		@location=location
		@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age=age
		puts "Initializing Santa instance..."
		puts "Welcome #{@name} to the land of infinite Santas!"
		puts "You are originally from #{location}"
		puts "You identify as #{@gender}"
		puts "You are #{@ethnicity}"
		puts "And you are #{@age} years old"
	end



	def celebrate_birthday=(current_age)
		@age = current_age+1
		puts "Happy Birthday #{@name}, you are now #{@age} years old"
	end

	def get_mad_at=(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking[8] =reindeer
		puts @reindeer_ranking
	end 

	def gender_change=(new_gender)
		@gender=new_gender
		puts new_gender

	end
end


	test = Santa.new("jack", "America", "transgender", "Indian", "5")
	test.eat_milk_and_cookies("choco chip cookie")


	test.celebrate_birthday

	test.get_mad_at = "Rudolph"
	test.gender= "agender"
	puts "now you identify as #{test.gender}"


	# def santa_generator()
	# example_name=["mike","peter","cracker-jack","ozwald","johnny","lisle","genie"].shuffle
	# example_genders = ["transgender", "male", "bigender", "female", "gender fulid", "unsure", "N/A"].shuffle
	

