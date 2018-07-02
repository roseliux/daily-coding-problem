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

def deserialize(string)
	stack = []
	string.each_char do |s|
		if s == '('
			stack.push(s)
		elsif  s == ')'
			stack.pop
		elsif 'n'
			tree.val = nil
		else
			tree = Node.new(s)
		end
	end

end

def serialize(node=nil)
	# puts "node #{node.inspect}"
	return '(n)' if node.nil?
	"(#{node.val}#{serialize(node.left)}#{serialize(node.right)})"
end

def same_close_tags?(string)
	stack = []
	string.each_char do |e|
		stack.push(e) if e == '('
		stack.pop if e == ')'
	end
	stack.empty?
end



require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_one
    node = Node.new('root', Node.new('left', Node.new('left.left')), Node.new('right'))
    assert_equal "(root(left(left.left(n)(n))(n))(right(n)(n)))", serialize(node)
    # assert deserialize(serialize(node)).left.left.val == 'left.left'
   end

   def test_example_two
   	node = Node.new('1', Node.new(2))
   	assert_equal '(1(2)(n))', serialize(node)
   end

   def test_example_three
     assert same_close_tags?('(root(left(left.left(n)(n))(n))(right(n)(n)))')
     assert !same_close_tags?('(((())')
   end
end