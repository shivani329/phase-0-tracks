#Encrypt 
#Take a string input 
#Parse through string adding 1 to the position value of each point
#return new string

def encrypt(stringInput)
	
		alphabetString = "abcdefghijklmnopqrstuvwxyz"
		lengthString = stringInput.length 
		returnString = ""
		for i in 0..lengthString -1
			if stringInput[i] == " "
				returnString += " "
			else
			returnString += alphabetString[(alphabetString.index(stringInput[i]) + 1) %26]
			end 
end
	return returnString

end 




def decrypt(stringInput)
	
		alphabetString = "abcdefghijklmnopqrstuvwxyz"
		lengthString = stringInput.length 
		returnString = ""
		for i in 0..lengthString -1
			if stringInput[i] == " "
				returnString += " "
			else
			returnString += alphabetString[(alphabetString.index(stringInput[i]) - 1) %26]
			end 
end
	return returnString

end 

puts "Encrypt or Decrypt a password?"
answer = gets.chomp
if answer.downcase == "encrypt"
	puts "Enter password"
	password = gets.chomp
	puts encrypt(password)
elsif answer.downcase == "decrypt"
	puts "Enter password"
	password = gets.chomp
	puts decrypt(password)
end 
# puts encrypt ("abc")
# puts encrypt ("zed")
# puts decrypt ("bcd")
# puts decrypt ("afe")
#puts decrypt(encrypt("swordfish"))


