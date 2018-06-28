# This problem was recently asked by Google.

# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

# Bonus: Can you do this in one pass?


def my_solution(array, k)
  # TODO
  true
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_one
    assert_equal true, my_solution([10, 15, 3, 7], 17)
  end
end
