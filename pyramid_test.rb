gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'pyramid'
require 'pry'

class PyramidTest < Minitest::Test

  # def test_one_level_pyramid
  #   output = capture_io do
  #     Pyramid.first_quarter_of_diamond('B')
  #   end
  #   binding.pry
  #   assert_output(output, 'A')
  # end

  # def test_two_level_for_first_quarterfirst_quarter
  #   assert_equal '
  #                  A
  #                 B B
  #                  A', Pyramid.make_first_quarter_of_diamond('B')
  # end
end
