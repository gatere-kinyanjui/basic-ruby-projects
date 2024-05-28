# frozen_string_literal: true

def substrings(string, dictionary)
  string.downcase
  string_array = string.split
  match_array = []
  count_array = []

  dictionary.each do |word|
    match_array.push(word) if string_array.any? { |s| s.include?(word) }

    count = string_array.count { |s| s.include?(word) }
    count_array.push(count)
    count_array.delete(0)
  end

  match_array.zip(count_array).to_h
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings('below', dictionary)
