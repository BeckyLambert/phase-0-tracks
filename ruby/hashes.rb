#Prompt the designer/user for the client's name, age, number of children, and decor theme.
client = {name: "nil", age: nil, children: nil, modern_style: nil, mountain_theme: nil}

puts "Client Information Questionaire: "

puts "Clients Name?"
client[:name] = gets.chomp

puts "Clients Age?"
client[:age] = gets.chomp.to_i

puts "How many childnren do you have?"
client[:children] = gets.chomp.to_i

puts "Would you prefer a modern_style? (y/n)"
client[:modern_style] = gets.chomp
if client[:modern_style] == "y"
  client[:modern_style] = true
else
  client[:modern_style] = false
end

puts "Would you prefer a mountain_theme? (y/n)"
client[:mountain_theme] = gets.chomp
if client[:mountain_theme] == "y"
  client[:mountain_theme] = true
else
  client[:mountain_theme] = false
end
#Print the hash back out to the screen when the designer has answered all of the questions.
puts ""
puts "Client data:"
puts ""
puts "name: #{client[:name]}"
puts "age: #{client[:age]}"
puts "children: #{client[:children]}"
puts "modern_style: #{client[:modern_style]}"
puts "mountain_theme: #{client[:mountain_theme]}"

#Give the user the opportunity to update a key. If the designer says "none", skip it. 
#If the designer enters "decor_theme" ask for a new value and update the :decor_theme key. 
puts "If you'd like to change some data, enter its description (i.e. \"name\", \"age\", etc.), or enter \"none\" to continue:"
puts ""
modify = gets.chomp

if modify == "none"
  
else

  puts ""
  puts "Please enter a new value for \"#{modify}\":"

  client[modify.to_sym] = gets.chomp

  if modify == "modern_style" || modify == "mountain_theme"
    if client[modify.to_sym] == "y"
      client[modify.to_sym] = true
    else
      client[modify.to_sym] = false
    end
  elsif modify == "age" || modify == "children"
    client[modify.to_sym] = client[modify.to_sym].to_i
  end

end
#Print the latest version of the hash, and exit the program.
puts ""
puts "Client data:"
puts ""
puts "name: #{client[:name]}"
puts "age: #{client[:age]}"
puts "children: #{client[:children]}"
puts "modern_style: #{client[:modern_style]}"
puts "mountain_theme: #{client[:mountain_theme]}"
