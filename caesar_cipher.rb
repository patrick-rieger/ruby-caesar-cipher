# Project: Caesar Cipher - https://www.theodinproject.com/lessons/ruby-caesar-cipher

<<-DOC
==| Tabela ASCII |==
 a: 97
 z: 122
 A: 65
 Z: 90
# the alphabet has 26 letters
DOC

def caesar_cipher(string, swap)
  # string.bytes.each_with_index do | num_letter, i |
  #   puts "#{string[i]} : #{num_letter}"
  # end
  new_string = ""
  
  for letter in string.split('')
    new_num = letter.ord + swap
    if letter >= 'a' && letter <= 'z' # Lower case
      new_num -= 26 if new_num > 'z'.ord
      new_string += new_num.chr
    elsif letter >= 'A' && letter <= 'Z' # Upper case
      new_num -= 26 if new_num > 'Z'.ord
      new_string += new_num.chr
    else # chars other than letters
      new_string += letter
    end
  end
  
  new_string
end

puts caesar_cipher("What a string!", 5)
