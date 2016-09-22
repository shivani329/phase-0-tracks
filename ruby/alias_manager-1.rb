#method input - one parameter = string = real name

def spy_name 

#convert string to array, split by word (index)
#reverse order of indices in array
#convert array back to string, combined by " "
#convert string back to an array, split by character 

	reverseArray - realname.split.reverse.join(" ").chars

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
			letter = "aeiou".chars ["aeiou".index(letter.downcase)+1]
#else downcase letter must be consonant it should be replaced with next consonant 
		else 
				letter = "bcdfghjklmnpqrstvwxyz".chars["bcdfghjklmnpqrstvwxyz".index(letter.downcase)+1]
		end

