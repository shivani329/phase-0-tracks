#release 0

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

#release 1
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


#release 2

#sort the array from largest to smallest 
#define method with one parameter (an array of integers)
#iterate through each (loop do) index number of array
#if number is less than the value of following index, swap
# repeat until number is less than or equal to value of the following index 

def bubble_sort(array)
	loop do 
		swapped = false
		number = array.length-1
		number.times do |i|
			if array[i] < array[i+1]
					array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
		break if not swapped
	end
	array
end

puts bubble_sort([45,17,9,12,30])

