# frozen_string_literal: true

def bubble_sort(array)
  # If size is 0 or 1, the array is already sorted
  return array if array.size <= 1

  # Upper bound shrinks towards lower bound every iteration
  (array.size - 1).downto(0) do |i|
    # Bubble the largest value to the upper bound
    0.upto(i - 1) do |j|
      next unless array[j] > array[j + 1]

      # Swap the two elements
      array[j], array[j + 1] = array[j + 1], array[j]
    end
  end
  array
end
