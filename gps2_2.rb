# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def grocery_list (str)
  food_list = Hash.new(0)
  
  food_array = str.split(" ")
  food_array.each do |item|
    food_list[item] = 1
  end
  
  printpretty(food_list)

end

def add_item (list, item, quantity)
  list[item] = quantity
  printpretty(list)
end

def remove_item (list, item)
  list.delete(item)
  printpretty(list)
end

def update (list, item, quantity)
  list[item] = quantity
  printpretty(list)
end

def printpretty (list)
  list.each do |item, quantity|
    puts "You are buying #{quantity} of #{item}"
  end
end


example_string = "carrots apples cereal pizza"
example_list = grocery_list(example_string)
example_list
add_item(example_list, "bananas", 7)
example_list
remove_item(example_list, "apples")
update(example_list, "pizza", 5)



##### HASH SYNTAX

## STRING
# hash = {
#   "string_key" => value
#   }

# ## SYMBOL
# hash = {
#   symbolkey: value
#   }

# ### UPDATES OR CREATES KEY, VALUE PAIR (FOR STRING OR SYMBOL SYNTAX)
# hash[key] = value