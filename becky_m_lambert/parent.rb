class Parent

attr_accessor :name
attr_reader :hours

	def initialize(name, hours)
		@name = name
		@hours = hours
		@past_requests = {} #neither readable or writeable
	end

	def greet_child
		p "*yaaaawn* I'm up, I'm up. #{name} is up. Whats the matter"
	end

	def hear_request(request)
		if @past_requests.length < 5
			@past_requests[request] = "yes"
			puts "Okay, since you said #{request} so nicely."
			return true
		else 
			@past_requests[request] = "no"
			puts "Not today, sweetie."
			return false
		end
	end 

	def display_request_history
		@past_requests.each do |request, granted|
	end 
	
	end 
end 

parent = Parent.new("bob", 4)
parent.greet_child
parent.hear_request("please buy me a toy")
parent.hear_request("I want to pass this assesment")
parent.hear_request("can you make breakfast")
parent.hear_request("can we get a puppy")
parent.hear_request("I want a unicorn!")
parent.display_request_history

#Question 8:
# This was as close as I could get. I cant get it to print anything but an empty count though.
# def count_vowels(string)
#  requests = ["please buy me a toy", "I need to pass this assesment", "can you make breakfast", "can we get a puppy", "I want a unicorn!"]
#   i = 0
#   j = 0
#   count = 0

#   while i < string.length do
#     while j < requests.length do
#       if string[i] == requests[j]
#         count += 1
#         break
#       end

#       j += 1
#     end

#     i += 1
#   end

# count_vowels
# end 