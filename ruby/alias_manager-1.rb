#method input - one parameter = string = real name

def spy_name (realname)

#convert string to array, split by word (index)
#reverse order of indices in array
#convert array back to string, combined by " "
#convert string back to an array, split by character 

	reverseArray = realname.split.reverse.join(" ").chars

#use .map! to apply conditional statements to each character in string
	
	reverseArray.map! do |letter|

#if downcase letter is u, change letter to a 
		
		if letter.downcase == "u" 
			 	letter = "a"

#if downcase letter is z, change letter to b 
	
		elsif letter.downcase == "z"
				letter = "b"

#if letter is " ", it should remain the same 
		elsif letter == " "
				letter = " "

#if downcase letter is a vowel the next vowel should replace the letter ( and one to index of array of vowels)
		elsif "aeiou".chars.include?(letter.downcase)
			letter = "aeiou".chars["aeiou".index(letter.downcase)+1]
#else downcase letter must be consonant it should be replaced with next consonant 
		else 
				letter = "bcdfghjklmnpqrstvwxyz".chars["bcdfghjklmnpqrstvwxyz".index(letter.downcase)+1]
		end
	end

	#convert back to string

	spyname_array = reverseArray.join.split

	# split string into array of words, cap each word
	spyname_array.map! do |name|
		name.capitalize
	end

	#back to string, output value of method

	spyname = spyname_array.join(" ")
	spyname
end


names = {}

loop do

	puts "Enter a name:"
	puts "When done, enter 'quit':"
	real_name = gets.chomp
	break if real_name.downcase == "quit"
	names[real_name] = spy_name(real_name)
end
names.each do |original_name, spy_name|
	puts "#{original_name} is undercover as #{spy_name}"
end



