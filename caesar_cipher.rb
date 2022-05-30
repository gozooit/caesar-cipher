require 'pry-byebug'

def caesar_cipher(string, shift_factor)
  # string.bytes.to_s
  array = string.split('')
  # array.map { |letter| letter.bytes}
  array.each do |letter|
    if letter.bytes[0]
end

# puts "A = " + caesar_cipher("A", 1)
# puts "Z = " + caesar_cipher("Z", 1)
# puts "a = " + caesar_cipher("a", 1)
caesar_cipher("azerty", 1)