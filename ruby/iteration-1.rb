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

