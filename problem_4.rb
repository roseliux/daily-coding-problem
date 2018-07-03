# This problem was asked by Stripe.

# Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.

# For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

# You can modify the input array in-place.

def my_solution(array)
  hash = {}

  array.each do |element|
    hash[element] = 0 if element > 0
  end

  (1..array.size).each do |i|
    return i if hash[i].nil?
  end
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_one
    assert_equal 2, my_solution([3, 4, -1, 1])
    assert_equal 3, my_solution([1, 2, 0])
    assert_equal 1, my_solution([3, 5, 7])
   end
end
