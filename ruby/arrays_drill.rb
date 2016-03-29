#Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.

#Add five items to your array. Print the array.

#Delete the item at index 2. Print the array.

#Insert a new item at index 2. Print the array.

#Remove the first item of the array without having to refer to its index. Print the array.

#Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)

#Initialize another array that already has a few items in it.

#Add the two arrays together and store them in a new variable. Print the new array.

array1 = Array.new 
p array1
array1.push(1, 2, 3, 4, 5)
array1.delete_at(2)
p array1
array1.insert(2,8)
array1.shift
p array1
if array1.include?(8) == true
	p "array1 does include 8 "
end
array2 = Array.new
p array2
array2.push("a", "b", "c", "d", "e")

new_variable = array1 + array2 

def random (name, number, color)
	return [name, number, color]
end

p random("margo", "3", "blue")

def random (arr, num)
	arr << num
end 
p random(["a", "b", "c", 1, 2], 3)