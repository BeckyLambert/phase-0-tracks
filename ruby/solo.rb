class Birds
    attr_reader :color, :size
    attr_accessor :age

	def initialize
		puts "initializing birds"
		@color = color
		@size = size
		@age = age
	end 


	def bird_sound(sound)
		 puts "This bird sounds like this:  #{sound}"
	end

	def sing
		puts "this bird can sing"
	end

	def fly
		puts "this bird can fly"
	end 
end 

birds = []
color = ["blue", "red", "green", "yellow", "orange", "purple"]
size = ["small", "not so small", "medium size", "large", "larger", "you're gonna need a bigger cage"]
      birds.length.times do |i|
  birds << Birds.new(color[i], size[i])
  
 puts "Here's the birds colors and sizes:"
 birds.each_index { |idx| puts "    Birds #{idx +1}'s color is \"#{bird[idx].color}\"; their size is \"#{birds[idx].size}\""}
 puts ""
 
 birds = []
 done = false
 until done 
 
 puts "What color bird would you like?"
 color = gets.chomp
 
 puts "What size bird would you like?"
 size = gets.chomp
 
 puts "Do you have an age preference?"
 age = gets.chomp
 
 puts "ok a #{color} bird that is #{size} and this #{age} old"