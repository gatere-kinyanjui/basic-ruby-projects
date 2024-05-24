# # frozen_string_literal: true

# UPPERCASE_ALPHABET = ('A'..'Z').to_a
# LOWERCASE_ALPHABET = ('a'..'z').to_a

# def gemini_caesar_cipher(string, shift_number)
#   # Convert to lowercase and remove spaces
#   stripped_string = string.downcase.gsub(/\s+/, '')

#   # Get ASCII values for letters
#   ascii_format = stripped_string.chars.map do |letter|
#     if LOWERCASE_ALPHABET.include?(letter) || UPPERCASE_ALPHABET.include?(letter)
#       letter.ord
#     else
#       # Keep non-alphabetic characters unchanged (optional)
#       letter
#     end
#   end

#   # Shift ASCII values and handle wrapping
#   encrypted_ascii_format = ascii_format.map do |num|
#     shifted_num = num + shift_number
#     shifted_num -= 26 if shifted_num >= ('a'.ord + 26) || shifted_num >= ('A'.ord + 26)
#     shifted_num
#   end

#   # Convert back to characters and join
#   encrypted_ascii_format.map(&:chr).join
# end

# puts gemini_caesar_cipher('tes t!', 5)

def self_taught_dev_cipher(string, shift)
  string_array = string.downcase.chars

  ord_array = []
  encr_ord_array = []
  encr_array = []

  string_array.each do |element|
    ord_array.push(element.ord)
  end

  ord_array.each do |number|
    if number < 97 || number > 122
      encr_ord_array.push(number)

    elsif number + shift > 122
      total_wrap_number = number + shift
      excess_wrap_number = total_wrap_number - 122
      encr_ord_array.push(96 + excess_wrap_number)
    else
      encr_ord_array.push(number + shift)
    end
  end

  encr_ord_array.each do |encr_character|
    encr_array.push(encr_character.chr)
  end

  encr_array.join('')
end

# p self_taught_dev_cipher('Lucy Nimzo', 1)
p self_taught_dev_cipher('What a string!', 5)
# => "Bmfy f xywnsl!"
