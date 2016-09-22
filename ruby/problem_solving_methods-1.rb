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


def fibonacci(n)
	#index starts at 0, iterate through until the value of n is reached 
	index = 2
	array = [0,1]
	until index == n
		array << (array[-2] + array[-1])
		index += 1
	end

	array
end
puts fibonacci(100).last