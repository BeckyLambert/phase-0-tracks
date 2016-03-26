employees = "two"

user_input = "" 

while user_input != employees
  puts "How many employees will be processed today?"
  user_input = gets.chomp
end


puts "What is your name?"
name = gets.chomp

puts "How old are you? What year were you born?"
age = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we get some for you?"
bread_answer = gets.chomp

puts "Would you like to enroll in the companys health insurance program?"
insurance_answer = gets.chomp

answer = ""

while answer != "sunshine" and answer != "pollen" do
  print "What are your allergies? "
  answer = gets.chomp
end

if answer == "sunshine"
  puts "vampire!"
else
  puts "not vampire"
end

age_is_correct = true
takes_insurance = true
hates_garlic = false

puts "definitely not a vampire"
p age_is_correct || takes_insurance || hates_garlic

puts "definitely a vampire"
p age_is_correct && takes_insurance && hates_garlic

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."