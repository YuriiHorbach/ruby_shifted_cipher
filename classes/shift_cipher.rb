class ShiftCipher

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

  end

  def encode(str, number_of_shift)
    
  end

end