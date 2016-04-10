class TodoList

def initialize(itemsinlist)
 #puts "HELLO-INITIALIZE"
 @list = itemsinlist
end

def get_items
 #puts "HELLO-GETITEMS"
 p @list.class
 p @list
end

def add_item(item)
 #puts "HELLO-ADD"
 @list << item
end

def delete_item(item)
 #puts "HELLO-DELETE"
 @list.delete(item)
end

def get_item(index_num)
 #puts "HELLO-GET-ITEM"
 p @list[index_num]
end

end

end