require "minitest/autorun"
require "minitest/pride"
require './lib/game'
require 'pry'

class GameTest < Minitest::Test

  def test_game_exists
    game_1 = Game.new
    assert_instance_of Game, game_1
  end

#.stub
# def test_random_number_stub
#     game_1 = Game.new
#     @answer.stub(:rand, 15) do
#       binding.pry
#       assert_equal(15, game_1.answer)
#     end
#   end
end
