# frozen_string_literal: true

my_unsorted_array = [4, 3, 78, 2, 0, 2]
my_sorted_array = [0, 2, 2, 3, 4, 78]
another_unsorted_array = [5, 3, 8, 4, 2]

test_array = [3, 2]

def bubble_sort(unsorted_array)
  n = unsorted_array.length

  loop do
    swapped = false
    (n - 1).times do |i|
      if unsorted_array[i] > unsorted_array[i + 1]
        unsorted_array[i], unsorted_array[i + 1] = unsorted_array[i + 1], unsorted_array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  unsorted_array
end

p bubble_sort(my_unsorted_array)
p bubble_sort(another_unsorted_array)
p bubble_sort(test_array)
p bubble_sort(my_sorted_array)
