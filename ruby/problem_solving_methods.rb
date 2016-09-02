def search (integer,array)
	index = 0
	while index == array.length
		break if output != nil
		output = nil
		array.each do |number|
			if number == integer
				output = index
				
			else
				output = 1
				index += 1
			end
		end
	index += 1
	end
	
	output

end				

int = 3
arr = [1,2,3,4,5,10,100,765]
puts search(int,arr)