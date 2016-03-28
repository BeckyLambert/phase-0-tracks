#Challenge 4.6
#RELEASE 2:

#1. a method called encrypt.  "abc" now is "bcd"
#Pseudocode
#  methodname (string)
#    Loop
#       read through each letter and set the letter to be one letter forward in alphabet
#       set new string to be the one letter forward plus the results of previous loop string.
#     end Loop
#  end method

# OUR METHOD DECLARATIONS
def encrypt (strg)
 index = 0
 new_string = ""
 while index < strg.length
   if strg[index] == "z"
     new_string = new_string + "a"
   else
       new_string = new_string + strg[index].next
   end
   index += 1
 end
 #puts new_string
 return new_string
end

#encrypt("abc")

#2. a method called decrypt. Reverse the process from encrypt method.  "bcd" is now "abc"
#Pseudocode:
#methodname (string)
#  Loop
#     read through each letter and compare it to the alphabet to see what [index] letter it is.  Then use that number and subtract one to set the new letter.
#     set new string to be one letter backward
#  end loop
#end method

def decrypt (str)
 alphabet = "abcdefghijklmnopqrstuvwxyz"
 index = 0
 new_string = ""
 alpha_letter = alphabet[0]
 #This WHILE loop is looping through the string
 while index < str.length
   letter = str[index]
   #puts letter
   indexalpha = 0
  #This UNTIL loop is looping through the alphabet
  until letter == alpha_letter
      alpha_letter = alphabet[indexalpha]
      indexalpha += 1
      #puts "indexalpha is #{indexalpha}"
      #puts "alpha_letter is #{alpha_letter}"
  end
   #puts "I'm out of the loop now"
   indexalpha = indexalpha - 2
   if letter == "a"
     alpha_back = "z"
   else
     alpha_back = alphabet[indexalpha]
   end
   #puts alpha_back
   new_string = new_string + alpha_back
   index += 1
 end
 return new_string
end

#decrypt("afe")


#OUR DRIVER CODE
puts "The duck flies at midnight....."
decrypt(encrypt("theduckfliesatmidnight"))
#This code works because it runs the encrypt method on the string first, and then it runs the decrypt method on the encrypted string.  Also remember to have a RETURN statement at the end of each method.


#Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
puts ("hi, you wanna encrypt/decrypt a password?")
encrypt_or_decrypt = gets.chomp

#Asks them for the password
puts ("ok give me the password!")
password = gets.chomp

#Conducts the requested operation, prints the result to the screen, and exits

if encrypt_or_decrypt == "encrypt"
 puts ("encrypted yay!")
 p encrypt(password)
elsif encrypt_or_decrypt == "decrypt"
 puts ("decrypted yay!")
 p decrypt(password)
else
 puts ("please enter encrypt or decrypt")
end