# frozen_string_literal: true

# Define an array
array = [4, 3, 78, 2, 0, 2]

# 1. Assignment 1
def bubble_sort array
  swapped = true
  while swapped
    swapped = false
    (array.length - 1).times do |x|
      if array[x] > array[x + 1] 
        tmp = array[x]
        array[x] = array[x + 1]
        array[x + 1] = tmp
        swapped = true
      end
    end
  end
  array
end

puts bubble_sort array

# 2. Assignment 2 with Block
def bubble_sort_by(array)
  swapped = true
  while swapped
    swapped = false
    (array.length - 1).times do |i|
      if yield(array[i], array[i + 1])
        tmp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = tmp
        swapped = true
      end
    end
  end
  array
end
puts bubble_sort_by([4, 3, 78, 2, 0, 2]) { |left, right| left > right }
