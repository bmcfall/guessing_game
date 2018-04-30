
require './lib/answer'
require './lib/options'

class Game
  include Answer
  include Options

  attr_accessor :game_start

  def initialize
    @answer = random_number
    @guess = nil
    @attempts = 0
    @game_start = game_start
  end

  def game_start

    if @attempts == 0
      puts welcome_user
      puts @answer
      @guess = gets.chomp.to_i
    end

    until @guess == @answer || @attempts == 5 do

      if @attempts == 0
        puts invite_guess
        @guess = gets.chop.to_i
      end

      if @attempts == 1
        puts invite_guess
        @guess = gets.chop.to_i
        if @guess > @answer
          puts level2_too_high
        elsif @guess < @answer
          puts level2_too_low
        end
      end

      if @attempts == 2
        puts invite_guess
        @guess = gets.chomp.to_i
        if @answer.even?
          puts hint_divisible_by_two
        elsif
          puts hint_not_divisible_by_two
        end

      if @guess == @answer
        print correct
      elsif
        puts invite_guess
      end
    end
    @attempts += 1
    end
  end
end
        #elsif @guess.to_s
        #   if @guess == 'u'
        #puts updated_instructions
        #   elsif @guess == 'c'
        #     puts level3_cheat
        #   end
