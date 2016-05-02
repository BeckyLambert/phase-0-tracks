class Parent

attr_accessor :name
attr_reader :hours

	def initialize(name, hours)
		@name = name
		@hours = hours
	end

	def greet_child
		p "*yaaaawn* I'm up, I'm up. #{name} is up. Whats the matter"
	end
end 

parent = Parent.new("bob", 4)