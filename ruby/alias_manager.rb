# Define method to return true if letter is vowel, false if not
def is_vowel (letter)
	vowels = 'aeiou'.chars
	vowels.index(letter) != nil
end
# Define method to return next vowel
def get_next_vowel (vowel)
	return 'a' if vowel == 'u'
	vowels = 'aeiou'.chars
	vowels[vowels.index(vowel) + 1]
end
# Define method to return next consonant
def get_next_consonant (consonant)
	return 'b' if consonant == 'z'
	consonants = 'bcdfghjklmnpqrstvwxyz'.chars
	consonants[consonants.index(consonant) + 1]
end
# Define method to return swapped character
def get_swapped_char (letter)
	if is_vowel(letter)
		get_next_vowel(letter)
	else
		get_next_consonant(letter)
	end
end
# Define method to swap first & last name and change characters,
def make_fake_name (name)
	# Swap first & last name
	swap_name = name.split(' ').reverse.join(' ')

	fake_name = ''
	index = 0
	while index < swap_name.length
		char = swap_name[index]
		if char == ' '
			fake_name += ' '
		else
			if char == char.downcase
				fake_name += get_swapped_char(char)
			else
				fake_name += get_swapped_char(char.downcase).upcase
			end
		end

		# Increment counter
		index += 1
	end

	fake_name
end

# greeting
puts "Fake name generator: "

# Make array for real_name/fake_name hashes
names = []

# Loop until quit is entered
done = false
until done do

	puts "Enter a name (or 'quit' when done):"
	real_name = gets.chomp

	if real_name == 'quit'
		puts "Done!"
		done = true
	else
		fake_name = make_fake_name(real_name)
		puts "...aka #{fake_name}"

		# Make hash of real & fake names
		name_pair = {
			real_name: real_name,
			fake_name: fake_name
		}
		
		names.push(name_pair)
	end 
end

# Print final data
puts "Here's your names:"
names.each { | name_pair | puts "   #{name_pair[:real_name]} is also known as #{name_pair[:fake_name]}" }