
# str = 'applexz'
# number_of_shift = 3

# arr = [*'a'..'z']
# arr_encrypted = []
# str = str.downcase
# letters = str.chars.map{|i| i}


# letters.each do |letter|

#     shifted_letter = (arr.find_index(letter) + number_of_shift)
#     if shifted_letter >= 26
#     shifted_letter_more = shifted_letter % 26
#       arr_encrypted << arr[shifted_letter_more]
#     else
#       arr_encrypted << arr[shifted_letter]
#     end
# end

# puts arr_encrypted

# puts arr.find_index('x')
# puts arr.find_index('y')
# puts arr.find_index('z')
# puts
# puts arr[(arr.find_index('x') + number_of_shift) % 26]
# puts arr[(arr.find_index('y') + number_of_shift) % 26]
# puts arr[(arr.find_index('z') + number_of_shift) % 26]





def decode(str, number_of_shift)
      arr = [*'a'..'z']
      arr_encrypted = []
      str = str.downcase
      letters = str.chars.map{|i| i}

      letters.each do |letter|

        shifted_letter = (arr.find_index(letter) + number_of_shift)
        
        if shifted_letter >= 26
        shifted_letter_more = shifted_letter % 26
          arr_encrypted << arr[shifted_letter_more]
        else
          arr_encrypted << arr[shifted_letter]
        end
      end

      arr_encrypted.join('')
end

def encode(str, number_of_shift)
      arr = [*'a'..'z']
      arr_encrypted = []
      str = str.downcase
      letters = str.chars.map{|i| i}

      letters.each do |letter|

        shifted_letter = (arr.find_index(letter) - number_of_shift)
        
        if shifted_letter <= 0
        shifted_letter_more = shifted_letter % 26
          arr_encrypted << arr[shifted_letter_more]
        else
          arr_encrypted << arr[shifted_letter]
        end
      end

      arr_encrypted.join('')
end

puts decode('applexz',3)
puts encode('dssohac',3)