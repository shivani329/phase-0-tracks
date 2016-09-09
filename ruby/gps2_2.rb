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




# Doing this as a solo challenge was tough. I relied on a lot of research to get it done
# I learned about the alias method and where that can be useful. 
# I dont really love psuedocoding...I almost prefer to jot it down on a piece of paper, but 
# I realize that pseduocoding is just a virtual way of jotting things down but in a place
# that is accessable any time while working on a file. I found myself confused suddnely with hashes
# vs arrays since time has passed since last week. Ive used them plenty since, but I just use them without
# putting too much thought in to it...which I probably should start doing more of. I kept wanting to use a class
# and call instances but that was a part of the challenge. I wasn't sure if i was supposed to make this with a user
# interface or not, but since it didnt specify I didn't do so. I need to really go back and go through all of the ruby material
# we have covered, as I am getting nervous for the week 7 assessment. But, I'm working on it! 