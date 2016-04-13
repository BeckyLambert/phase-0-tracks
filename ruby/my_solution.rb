# Virus Predictor

# I worked on this challenge [with: Doug James ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' 

class VirusPredictor
   # initalizes program and holds attributes for use in other methods. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calls the 2 methods "predicted_deaths" & "speed of spread" & passing through arguments
  # Consider the scope of instance variables to determine what could be refactored. Once you 
  #figure out what the issue is, you'll need to edit the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #If you move private above virus_effects the method doesn't work! 
  #To call private methode you need to be within the scope of the project.

#takes the population density and population and state and predicts a number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#takes population density and state and predicts the speed of the spread of the virus.
  def speed_of_spread
   #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# release 5 driver code:
# STATE_DATA.each do |state, data_hash|
#   VirusPredictor.new(state, data_hash[:population_density], data_hash[:population]).virus_effects
# end

# Reflection:
# What does require_relative do? How is it different from require?
#require pulls a file from any directory, require relative loads the file that is relative to your current file.  

# What are the differences between the two different hash syntaxes shown in the state_data file?
# the biggest difference we noticed was that in the state_data file it was numerous hashes inside one larger hash.

# What are some ways to iterate through a hash?
# the easiest way I found was using the index, you can also use .each and .map

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# they are not needed because the arguments are in the initialize method 

# What concept did you most solidify in this challenge?
# I learned quite a bit in this challenge, like the state_data variable being a constant variable and what 
# it's scope is. Also learning more about 'private' and how it works. 






