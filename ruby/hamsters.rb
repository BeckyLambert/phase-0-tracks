puts "What is hamsters name?"
hamsters_name = gets.chomp

puts "Hamsters volume level 1-10?"
volume = gets.chomp.to_i
p volume


puts "Whats the fur color?"
fur_color = gets.chomp

puts "Is hamster a good adoption candidate?"
candidate = gets.chomp

puts "What is estimated age?"
age = gets.strip

if age.empty?
age = nil
else
age = age.to_i
end

puts "The hamster's name is: #{hamsters_name}"
puts "The hamster's voume is: #{volume}"
puts "The hamster's fur color is: #{fur_color}"
puts "The hamster's will be a good candidate for adoption yes/no?: #{candidate}"
puts "The hamster's estimated is: #{age}"

