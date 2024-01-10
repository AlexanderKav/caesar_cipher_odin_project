alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]


puts "Please pick a number to shift down letter"

number = gets
number_to_shift = number.to_i

puts "Please pick a sentence"

sentence = gets

#sentence = sentence.downcase

new_sentence = ""

#def caesar_cipher(sentence, number)
sentence.each_char { |n|
    if n == " "
        new_sentence = new_sentence + n
    #print n
#print alphabet.find_index(n)
    else
        number_of_letter = alphabet.index(n)
        puts number_of_letter
        new_number = number_to_shift + number_of_letter.to_i
        #puts new_number
        #puts alphabet[new_number]
        new_sentence = new_sentence + alphabet[new_number]
        #number = number + numberOfLetter
        #print alphabet[number]
     end
    }
puts(new_sentence.chop)
#end

#caesar_cipher(sentence, number)