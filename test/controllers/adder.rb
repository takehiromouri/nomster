require 'minitext/autorun'

class Adder
	def initialize(num1, num2)
		@num1 = num1
		@num2 = num2
	end

	def add
		@num1 + @num2
	end
end

class TestAdder < Minitest::Test
	def test_adder
		adder = Adder.new(10, 14)
		assert_equal 24, adder.add
	end
end