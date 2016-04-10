module Shout
  def saying(words)
    puts "Anyone else want another #{words}?!"
  end
end

class DrunkPerson
	include Shout
end

class SportsFan
	include Shout
end

person1 = DrunkPerson.new
person1.saying("round")

person2 = SportsFan.new
person2.saying("drink")