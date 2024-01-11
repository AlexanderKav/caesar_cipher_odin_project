alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z", 
"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
upper_alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z", 
"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]


puts "Please pick a number to shift down letter"

number = gets
number_to_shift = number.to_i

puts "Please pick a sentence"

sentence = gets

def caesar_cipher(sentence, number_to_shift, alphabet, upper_alphabet)
    new_sentence = ""
sentence.each_char { |n|
    if n == " "
        new_sentence = new_sentence + n
    #print n
#print alphabet.find_index(n)
    elsif /[[:upper:]]/ =~ n
        number_of_letter = upper_alphabet.index(n)
        new_number = number_to_shift + number_of_letter.to_i
        new_sentence = new_sentence + upper_alphabet[new_number]
    else
        number_of_letter = alphabet.index(n)
        new_number = number_to_shift + number_of_letter.to_i
        new_sentence = new_sentence + alphabet[new_number]
     end
    }
return new_sentence.chop
end

puts caesar_cipher(sentence, number_to_shift, alphabet, upper_alphabet)