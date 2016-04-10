# release 0 and 1

class Santa 
	def initialize (gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
		"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end 

	def speak
		puts "ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie)
		 puts "That was a good #{cookie}"
	end
# Getter methods for attributes
	def gender
		@gender
	end 

	def ethnicity
		@ethnicity
	end 

# getter method to test celebrate_birthday method...
	def age
		@age
	end

# getter method to test get_mad_at method...
	def reindeer_ranking
		@reindeer_ranking
	end
end  

# santas = []
# new_santa_data = [
# 	["gender fluid", "white"],
# 	["female", "prefer not to say"],
# 	["black", "male"]
# ]
# ]
# new_santa_data.each { | data | santas.push( Santa.new(data[0], data[1]) ) }
santa = Santa.new 
santa.speak
santa.eat_milk_and_cookies("peanut butter")