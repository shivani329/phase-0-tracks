def calculator(n, operator, m)
    if operator == "+"
        answer = n.to_i + m.to_i
    elsif operator == "-"
        answer = n.to_i - m.to_i
    elsif operator == "*"
        answer = n.to_i * m.to_i
    elsif operator == "/"
        answer = n.to_i / m.to_i
    end 
    answer 
end

def error_check(user_equation)
	if user_equation == ""
		puts "Error, blank"
		return false
		#if no the user presses enter without putting anything in 
	elsif user_equation == "abcdefghijklmnopqrstuvwxyz"
		puts "Error, please enter a number"
		return false 
		#if the user enters a character ...
		#i wanted to make it if a user enters a character at all, not just the letter a, but i was running out of time 
	end 
	return true  
end 

def user_calculator
	user_equation = ""
	calcs_done = 0
	user_array = []

	puts "Give me an equation please!"
	user_equation = gets.chomp
	while user_equation != "done" 
		checked_answer = error_check(user_equation)
			if checked_answer == false
				user_equation = gets.chomp
				next 
			end  

#split indexes to print each by recording each as user input
		input_array = user_equation.split(' ')
		calc_answer = calculator(input_array[0], input_array[1], input_array[2])
		puts "#{calc_answer} this is your answer"
		user_array << "#{user_equation} = #{calc_answer}"
		calcs_done += 1
		user_equation = gets.chomp
	end 
	puts "There are the calculations you have done: #{calcs_done}"
	puts user_array

	
end 
p user_calculator


# #user can make errors but i was unable to make the error that I wanted to which was to 
# cause an error message if the user puts in any character other than a number or an operator
# so, for now i put it as the whole alphabet causes an error message because I know that is the first
# step, however, it would be really unlikely that the user typed out the whole alphabet...
# didnt have enough time to figure that one