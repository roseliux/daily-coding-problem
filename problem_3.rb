# This problem was asked by Google.

# Given the root to a binary tree, implement serialize(root), which serializes the tree into a string,
# and deserialize(s), which deserializes the string back into the tree.

# For example, given the following Node class

# class Node:
#     def __init__(self, val, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
# The following test should pass:

# node = Node('root', Node('left', Node('left.left')), Node('right'))
# assert deserialize(serialize(node)).left.left.val == 'left.left'

class Node
	attr_accessor :val, :left, :right
	def initialize(val, left=nil, right=nil)
	  @val = val
	  @left = left
	  @right = right
	end
end

def serialize(tree)
  return Marshal.dump(tree)
end

def deserialize(serialized)
  Marshal.load(serialized)
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_one
    node = Node.new('root', Node.new('left', Node.new('left.left')), Node.new('right'))
    assert deserialize(serialize(node)).left.left.val == 'left.left'
   end
end
