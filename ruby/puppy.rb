class Dog  
  def initialize(breed, name, characteristics, behavior)  
    @breed = breed  
    @name = name
    @characteristics = characteristics
    @behavior = behavior
  end  
  
  def display  
    puts "I am a  #{@breed} and my name is #{@name}. I am very #{@characteristics} and I love to  #{@behavior}." 
  end  
end  
  
d = Dog.new('Greyhound', 'Scout', 'friendly', 'cuddle') 
  
d.display  