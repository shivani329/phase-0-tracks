# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split string into an array, 
  # convert to hash
  # set default quantity
  # print list
# output: return updated hash

# Method to add an item to a list
# input: item and optional quantity
# steps: update list with new quantity
# output: new list

# Method to remove an item from the list
# input: name of item to remove, updated list
# steps: delete item from list
# output: new list

# Method to update the quantity of an item
# input: item name, list
# steps: make item quantity equal to value 
# output: list

# Method to print a list and make it look pretty
# input: list
# steps: iterate through  hash 
# print out list of items
# output: none



def mainList (string)
	mainArray = string.split(" ")
	list = Hash.new 
	for i in 0...mainArray.length
		list[mainArray[i]] = 1
	end
	listOutput(list)
	list
end

def remove(item, list)
	list.delete(item)
	list
end
def updatedList(item, list, new=0)
	list[item] = new
	list
end

alias add updatedList


def listOutput(list)
	list.each{|item, quantity| p "You need to get #{quantity} #{item}(s)"}
end

list = mainList("apples eggs carrots")
list = add("lemonade", list, 2)
list = add("tomatoes", list, 3)
list = add("onions", list, 1)
list = add("ice Cream", list, 4)
list = remove("lemonade", list)
list = updatedList("ice Cream", list, 1)
listOutput(list) 




