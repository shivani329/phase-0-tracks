# Define method - input integer and array
# iterate through each index of array

def search(integer,array)
	index = 0
	# using while loop while index < array.length
	# compare value of integer to array at current index
	while index < array.length
		output = nil
		# if equal to one another, return output of index and break
		if array[index] == integer
			output = index
			break
		# Else return output of nil and advance index
		else
			output = nil
			index +=1
		end
	end
	output
end


int = 765
arr = [1,2,3,4,5,10,100,765]
puts search(int,arr))

#Release 1

		def fib(n)
	index = 0
	array = []
	until index == n
    if index == 0
        array << 0
        index += 1
    elsif index == 1
        array << 1
        index += 1
    else
        array << (array[index-2] + array[index-1])
        index += 1
    end
	end
	array
end

fib(100).last




