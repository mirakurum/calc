require 'test_helper'
require 'calc'

class TestCalculator < Minitest::Test
  context 'a calc' do
    setup do
      @calc = Calc.new
    end

    should 'add two numbers properly' do
      assert_equal 4, @calc.add(2, 2)
    end

    should 'not add incorrectly' do
      refute_equal 5, @calc.add(2, 2)
    end

    should 'subtract two numbers properly' do
      assert_equal 0, @calc.sub(2, 2)
    end

    should 'not subtract incorrectly' do
      refute_equal 3, @calc.sub(2, 2)
    end

    should 'multiple two numbers properly' do
      assert_equal 6, @calc.multi(2, 3)
    end

    should 'not multiple incorrectly' do
      refute_equal 5, @calc.multi(2, 3)
    end

    should 'divide two numbers properly' do
      assert_equal 1.5, @calc.div(3, 2)
    end

    should 'not divide incorrectly' do
      refute_equal 5, @calc.div(8, 4)
    end

    should 'divide to zero properly' do
      assert_equal 'Делить на ноль нельзя', @calc.div(8, 0)
    end
  end
end
