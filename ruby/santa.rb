# release 0 and 1

class Santa 
	attr_reader :gender, :ethnicity, :reindeer_ranking
    attr_accessor :age

	def initialize (gender, ethnicity)
		puts "initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		#@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
		#"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end 

	def speak
		puts "ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie)
		 puts "That was a good #{cookie}"
	end
	
	# def gender
	# 	@gender
	# end 

	# def ethnicity
	# 	@ethnicity
	# end 

# getter method to test celebrate_birthday method...
	# def age
	# 	@age
	# end

# getter method to test get_mad_at method...
	# def reindeer_ranking
	# 	@reindeer_ranking
	# end
	
	def celebrate_birthday=(years)
		@age += years
	end


	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.push(reindeer_name)
	end

end  

santas = []
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
      gender.length.times do |i|
  santas << Santa.new(gender[i], ethnicity[i])

# Test Release 2 (getter methods)
puts "Here's the Santas' genders & ethnicities:"
 santas.each_index { | idx | puts "    Santa #{idx +1}'s gender is \"#{santas[idx].gender}\"; their ethnicity is \"#{santas[idx].ethnicity}\""}
 puts ""# 
 
 
# Release 4
many = 10
santas = []
genders = ["agender", "female", "male", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white","prefer not to say", "Mystical Creature (unicorn)", "N/A"]
many.times do
	santas.push( Santa.new( genders.sample, ethnicities.sample ) )
end
 
# Test Release 4 (Many, Many Santas!)
puts "Here's the Santas' genders & ethnicities:"
santas.each_index { | idx | puts "  #{idx +1}: gender \"#{santas[idx].gender}\", ethnicity: \"#{santas[idx].ethnicity}\", age: #{santas[idx].age}"}
puts ""

end