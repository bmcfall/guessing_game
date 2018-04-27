require 'pry'

class Answer

  attr_reader :random_number

  def initialize
    @random_number = random_number
  end

  def random_number
    @random_number = rand(100)
  end
end

answer = Answer.new
answer.random_number
p answer
