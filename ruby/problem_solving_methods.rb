#define method - input integer and array 
#iterate through each index of array
# using while loop until index 
# compare value of integer to array at current index 
# if equal to one another return output of index


def search(integer,array)
	index = 0

	# array.length.times do
	# finished = nil
	# output = nil

	# break if (output != nil) || (finished == true)

	while index < array.length
		output = nil
		# break if output != nil
		array.each do |number|
			if array[index] == integer
				output = index
			else
				output = nil
				output
				# if index == array.length
					# finished = true
				# end
			end
			# break if number == integer

			# if number != integer
			# 	output = nil
			# elsif number == integer
			# 	output = index
			# end
		end
	if output != nil
		break
	end
	index += 1
	end
	output
end

int = 100
arr = [1,2,3,4,5,10,100,765]
puts search(int,arr)






