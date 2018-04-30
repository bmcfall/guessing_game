
module Options

  def welcome_user
    print "********** The Fabulous Guessing Game!**********\n\nI have generated a random number for you.\n\nPress 'i' or type 'instructions' for more information.\n\n\Please make a guess.\n"
  end

  def correct
    print "You guessed the right number!\n"
  end

  def guessing_game_instructions
    print "Please enter a number to guess the computer generated random number.\n"
  end

  def hint_divisible_by_two
    print "The random number is divisible by two.\n"
  end

  def hint_not_divisible_by_two
    print "The random number is not divisible by two.\n"
  end

  def invite_guess
    print "Please make another guess.\n"
  end

  def instructions
    print "Guess a random number and win the game!\n"
  end

  def level2_too_high
    print "HINT:  Your guess is greater than the random number.\n"
  end

  def level2_too_low
    print "HINT:  Your guess is lower than the random number.\n"
  end

  def level3_cheat
    print "Type 'c' or cheat to see the random number.\n"
  end

  def updated_instructions
    print "Note the following updated game instructions:\n\nEnter 'c' to see the random number or enter your own guess.\n"
  end
end
