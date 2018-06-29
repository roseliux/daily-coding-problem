# This problem was asked by Uber.
# Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.
# For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
# Follow-up: what if you can't use division?

def my_solution(array)
  result = []
  array.each_index do |index|
    multiplication = 1
    array.each_with_index  do |e, i|
      multiplication *= e if index != i
    end
    result.push(multiplication)
  end
  result
end

def better_solution(array)
  result = []
  product = array.inject(:*)
  array.each do |element|
    result.push(product / element)
  end
  result
end

def short_solution(array)
  product = array.inject(:*)
  array.map {|element| product / element }
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_one
    assert_equal [120, 60, 40, 30, 24], short_solution([1, 2, 3, 4, 5])
  end

  def test_example_two
    assert_equal [2, 3, 6], short_solution([3, 2, 1])
  end
end
