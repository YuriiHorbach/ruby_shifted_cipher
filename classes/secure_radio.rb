require_relative 'radio'
require_relative 'shift_cipher'

class SecureRadio < Radio
  
  @@shift = 3

  protected

    def audio_stream
      ShiftCipher.decode(super, @@shift)
    end
  
end
