
# get users name 
# create fake name with following criteria:
# Swap first and last name
# Change all vowels to next vowl (a=>e, e=>i i=>o o=>u u=>a)
# Change all consonants to next consonent in alphabet (d=>f n=>p)




def name_changer
	

	code_name = {}
	puts "What is your first and last name?"
	name = gets.chomp 
	while name != "quit" && name != ""  
		new_name = name.downcase.split(' ').reverse!.join(' ')
		name_to_array = new_name.chars
		# makes string in to an array and each letter is separated now 
		consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
		vowels = %w{a e i o u}
		# conditions need to match
		name_to_array.map! do |letter| 
			if letter == "u"
				letter = "a"
 			elsif vowels.include?(letter)
 				#advance index by 1 if letter is a vowel (true value)
 				new_vowel_index = vowels.index(letter) + 1
 				new_vowel = vowels[new_vowel_index]
			elsif letter == "z"
				letter = "b"
				# moves letters to next index 
			elsif consonants.include?(letter)
				new_consonant_index = consonants.index(letter) + 1
				new_consonant = consonants[new_consonant_index]
			else 
				letter # allows spaces
			end		
		end
		#re format to correct spacing, capitalizing, rejoining etc 
		scrambled_name = name_to_array.join('').split(" ").each{|i| i	.capitalize!}.join(" ")
		code_name[name] = scrambled_name
		name = gets.chomp #assigns new input to name to see if it should loop back to begining or quit
		end 
code_name.each do |name, scrambled_name|
	puts "#{name}'s undercover name is #{scrambled_name}!!!"
end 
end
name_changer


