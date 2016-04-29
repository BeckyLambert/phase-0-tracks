class Dancer

	def initialize(name, age)
  	  @dancer_name = name
  	  @dancer_age = age
  	  @dance_card = []
	end

	def name
  	  @dancer_name
	end

	def age
  	  @dancer_age
	end

	def age=(new_age)
	  @dancer_age = new_age
	  @dancer_age
	end

	def pirouette
      @dancer_pirouette = "*twirls*"
    end

	def bow
      @dancer_pirouette = "*bows*"
    end

    # #add new dance partner name at the bottom of the list
	def queue_dance_with(new_partner)
	  @dance_card << new_partner
	end

	# #look at array(list) of partners
	def card
	  @dance_card
	end

	# #take first item of array to dance with
	def begin_next_dance
	  partner = @dance_card[0]
	  @dance_card.shift
	  p @dance_card
	  p "Now dancing with #{partner}."
	end

	# #New feature for dancer - Ability to leap
	def leap
	  @dancer_leaps = "Dancer leaps in the air!"
	end

	# #Second new feature for dancer - Ability to change color of tutu.
	def tutu_color
	  @tutu_color
	end

	def tutu_color=(new_color)
	  @tutu_color = new_color
	  @tutu_color
	end
end

Dancer.new("bob", 28)