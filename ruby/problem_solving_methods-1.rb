#define method - input integer and array 
#iterate through each index of array

def search(integer, array)

	index = 0 

	#use while loop while index < array.length
	#compare value of integer to array at the current index

	while index < array.length
			output = nil 

	#if they are equal to each other return output of index and break 
		if array[index] == integer
			output = index
		break

	#else will return output of nil and advance index 
		else 
			output = nil 
			index +=1
		end
	end
	output
end

int = 5
arr = [1,2,3,4,5,10,100,765]
puts search(int,arr)


# int = 100 
# arr = [1,2,3,4,5,10,100,765]
# puts search(3, arr)