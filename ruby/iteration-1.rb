# release 0

def greeting
	puts "Hey you!"
	yield("Shivani", "Jack")
end

greeting { |name1, name2| puts "How are you #{name1}? And you #{name2}?"}

# release 1

animals = {
	shark: "hammerhead",
	feline: "lion",
	bird: "falcon",
	bug: "fly",
	spider: "black widow"
}	

genres = ["horror", "thriller", "action", "drama", "comedy"]

animals.each {|type, example| puts "An example of a #{type} is a #{example}" }

genres.each {|categories| puts "an example of a movie genre is: #{categories.upcase}" }

puts "now lets use .map"

genres.map! do |genre|
	puts genre.reverse
	genre.reverse
end

p genres
#now you see that the change made stays 

#release 2
puts ".delete_if example"

random_numbers = [1, 15, 90, 59, 32]
p random_numbers
random_numbers.delete_if { |random| random < 45}
puts "Delete numbers less than 45"
p random_numbers

puts ".select example:"

random_numbers = [1, 15, 90, 59, 32]
p random_numbers
random_numbers.select! { |random| random < 35}
puts "Select number(s) less than 35"
p random_numbers


puts ".keep_if example"

random_numbers = [1, 15, 90, 59, 32]
p random_numbers
random_numbers.keep_if { |random| random.odd? }
puts "Keep only odd numbers"
p random_numbers


puts ".reject! example"
random_numbers = [1, 15, 90, 59, 32]
p random_numbers
random_numbers.reject! { |random| random.odd? }
puts "Remove odd numbers"
p random_numbers



random_words = {
	3 => "cat",
	5 => "snake",
	4 => "bird",
	6 => "rabbit",
	7 => "gorilla",
}
puts ".delete_if example"
p random_words
random_words.delete_if { |digit, string| string.length <= 4}
puts "Delete if length of word is less than or equal to 4 characters"
p random_words



random_words = {
	3 => "cat",
	5 => "snake",
	4 => "bird",
	6 => "rabbit",
	7 => "gorilla",
}
puts ".select example"
p random_words
random_words.select! { |digit, string| string.length > 3}
puts "Select if length of word is more than 3 characters"
p random_words



random_words = {
	3 => "cat",
	5 => "snake",
	4 => "bird",
	6 => "rabbit",
	7 => "gorilla",
}
puts ".keep_if example"
p random_words
random_words.keep_if { |digit, string| digit.odd? }
puts "Keep if length of word is an odd number of characters"
p random_words


random_words = {
	3 => "cat",
	5 => "snake",
	4 => "bird",
	6 => "rabbit",
	7 => "gorilla",
}

puts ".reject example"
p random_words

random_words.reject! { |digit, string| digit > 4 }

puts "Reject if length of word is greater than 4 characters"
p random_words
