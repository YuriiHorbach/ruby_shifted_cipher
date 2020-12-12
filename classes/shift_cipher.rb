class ShiftCipher
  @@arrLittle = [*'a'..'z']
  @@arrBig = [*'a'..'z']

  def self.decode(str, number_of_shift=3)
      str.chars.map do |letter|
        if @@arrLittle.include?(letter) 
          i = @@arrLittle.find_index(letter)
          mod = i % @@arrLittle.length
          @@arrLittle[mod - number_of_shift]
        elsif @@arrBig.include?(letter) 
          i = @@arrBig.find_index(letter)
          mod = i % @@arrBig.length
          @@arrBig[mod - number_of_shift]
        else
          letter
        end
      end.join('')
  end


  def self.encode(str, number_of_shift=3)
      str.chars.map do |letter|
        if @@arrLittle.include?(letter) 
          i = @@arrLittle.find_index(letter)
          mod = i % @@arr.length
          @@arrLittle[mod - number_of_shift]
        elsif @@arrBig.include?(letter) 
          i = @@arrBig.find_index(letter)
          mod = i % @@arr.length
          @@arrBig[mod - number_of_shift]
        else
          letter
        end
      end.join('')
  end

end

# puts ShiftCipher.decode('apple',3)