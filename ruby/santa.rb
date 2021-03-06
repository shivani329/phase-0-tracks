class Santa

	attr_reader :name,:ethnicity,:location,:gender,:age
	attr_accessor :gender,:ethnicity,:name,:location

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


#getter methods (shorthand is attr_reader)
#these can be commented out because I used the short hand of attr_reader 

	# def age
	# 	puts @age
	# end

	# def ethnicity 
	# 	puts @ethnicity
	# end

	# def name
	# 	puts @name
	# end

	#setter methods (shorthand is attr_accessor)

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
	end
end


#test driver code 
	test = Santa.new("jack", "America", "transgender", "Indian", "5")
	test.eat_milk_and_cookies("choco chip cookie")


	test.celebrate_birthday = 5

	test.get_mad_at = "Dancer"
	#gender can be changed from outside of the class
	test.gender= "agender"
	puts "now you identify as #{test.gender}" 


	def santa_generator
	example_name=["mike","peter","cracker-jack","ozwald","johnny","lisle","genie"].shuffle
	example_locations=["Seattle","Illinois","North Pole","Galactica","Zootopia","Pandora","Antarctica"].shuffle
	example_genders = ["transgender", "male", "bigender", "female", "gender fulid", "unsure", "N/A"].shuffle
	example_ethnicities = ["Indian", "Black", "Portugese", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"].shuffle
	example_ages=[140,120,58,29,132,97,71].shuffle
	
	x=0
	while x<100
 	santas=[]
 	i=rand(7)
 	new_santa=Santa.new(example_name[i],example_locations[i],example_genders[i],example_ethnicities[i],example_ages[i])
 	santas[x]=new_santa
	
	x+=1	
	end
end

santa_generator

