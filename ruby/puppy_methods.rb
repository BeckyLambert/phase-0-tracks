

# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy 
#   end
  
#   def speak(x)
#     x.times do |i|
#      print "Woof!\n"
#     end
#   end 
  
#     def roll_over
#     puts "I rolled over"
#     end
    
#     def age(human_years)
#          dog_years = human_years * 7
#       puts "#{dog_years}"
#     end
    
#    def high_five(x)
#      x.times do |i|
#         puts "I high fived #{x} times!\n"
#      end
#    end 
  
#   def initialize
#     puts "Initializing new puppy instance"
#   end 
# end

# scout = Puppy.new

# scout.fetch("toy")
# scout.speak(3)
# scout.roll_over
# scout.age(10)
# scout.high_five(3)

class Kitten
  def initialize
    puts "Initializing new Kitten instance"
  end
  
  def attack(toy)
    puts "I attacked the #{toy}!"
    toy 
  end
  
  def lick(x)
    x.times do |i|
     print "I licked myself!\n"
    end
  end 
  
count = 0
type_of_cat = Array.new

while count < 50 
 type_of_cat.push(Kitten.new)
 count += 1
end
  
type_of_cat.each do |kitten|
  kitten.attack("toy")
  kitten.lick(1)
end
  
end

