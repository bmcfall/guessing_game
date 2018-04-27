require 'minitest/autorun'
require 'minitest/pride'
require './lib/answer'
require 'pry'

class AnswerTest < Minitest::Test

  # Answer is real.
  def test_answer_exists
    answer = Answer.new

    assert_instance_of Answer, answer
  end

  # random_number is real.
  def test_it_has_a_random_number
    answer = Answer.new

    assert_instance_of Integer, answer.random_number
  end

  # Range#include
  # assert_includes 70..100, p.value
  def test_random_number_is_between_zero_and_one_hundred
    answer = Answer.new

    assert_includes 0..100, answer.random_number
  end

  #.stub
  def test_random_number_stub
    answer = Answer.new
    answer.stub(:rand, 15) do
      assert_equal(15, answer.random_number)
    end
  end
end
