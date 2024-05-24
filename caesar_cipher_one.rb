# frozen_string_literal: true

# TODO: OPTION ONE
UPPERCASE_ALPHABET = ('A'..'Z').to_a
LOWERCASE_ALPHABET = ('a'..'z').to_a

def caesar_cipher(string, shift_number)
  stripped_string = string.delete(' ')

  ascii_format = stripped_string.chars.map do |letter|
    if LOWERCASE_ALPHABET.include?(letter) || UPPERCASE_ALPHABET.include?(letter)
      letter.ord
    else
      letter
    end
  end

  # puts ascii_format

  encrypted_ascii_format = ascii_format.map { |num| num + shift_number }

  encrypted_ascii_format.map(&:chr).join
end

puts caesar_cipher('tes t', 5)
# caesar_cipher('What a string!', 5)
# => "Bmfy f xywnsl!"

# TODO: OPTION TWO
