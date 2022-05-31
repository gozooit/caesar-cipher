require 'pry-byebug'

def caesar_cipher(string, shift_factor)
  string_array = string.split('')
  byte_array = string_array.map { |string| string.bytes[0] }
  shifted_byte_array = byte_array.map { |byte| shift_byte(byte, shift_factor)}
  shifted_byte_array.pack('C*').force_encoding('UTF-8')
end

def shift_byte(byte, shift_factor)
  if shift_factor > 26
    shift_factor = shift_factor % 26
  end
  if byte.between?(65, 90)
    byte = byte + shift_factor
    # needs to wrap between 65 and 90 to keep small letters
    if byte > 90
      byte = 64 + (byte - 90)
    elsif byte < 65
      byte = 91 - (65 - byte)
    end
  elsif byte.between?(97, 122)
    byte = byte + shift_factor
    if byte > 122
      byte = 96 + (byte - 122)
    elsif byte < 97
      byte = 123 - (97 - byte)
    end
  end
  return byte
end