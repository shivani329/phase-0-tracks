#Release0

def favorite_color
	
	puts "My favorite color is purple!"
	yield("red", "blue")

	
end

favorite_color {|color_1, color_2| puts "But I also kind of like #{color_1} and #{color_2} as well!"}

#Release 1
ocean_animals = ["Whales", "Dolphins", "Sharks", "Jellyfish"]
p ocean_animals

ocean_animals.each do |x| 
  puts "#{x} are ocean dwelling creatures!"
end 


ocean_animals.map! do |x|
	puts "#{x.upcase} ARE COOL!"
	
end

 birthdays = {
  Mary: "january",
  Sam: "october",
  John: "june",
  Mike: "march"
}



p birthdays
birthdays.each do |name, month|
	puts "#{name}'s birthday is in #{month.capitalize}."
end

birthdays.map do |name, month|
	puts "In #{month.capitalize} remember to say Happy Birthday to #{name}!"
end

#Release 2
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers.delete_if {|numbers| numbers < 6}
#should return 6-9
p numbers

numbers = {
	one: 1,
	two: 2,
	three: 3, 
	four: 4, 
	five: 5,
	six: 6,
	seven: 7, 
	eight: 8,
	nine: 9
}

p numbers.delete_if {|word, numerical| numerical < 6}

p numbers

#question2

numbers = {
	one: 1,
	two: 2,
	three: 3, 
	four: 4, 
	five: 5,
	six: 6,
	seven: 7, 
	eight: 8,
	nine: 9 
}

p numbers.delete_if {|word, numerical| numerical > 4}

p numbers


numbers = [-2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers.keep_if {|num| num < 2}

p numbers

#question3


random_words = {
	pig: "pig".length,
	crates: "crates".length,
	apple: "apple".length,
	egg: "egg".length,
	wheels: "wheels".length,
	motorcycle: "motorcycle".length,
}

p random_words

puts "Which of these words has an even number of letters in it? How many letters?"
even_words = random_words.select {|word, num| num.even? }



p even_words

