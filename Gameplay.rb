class Gameplay
  attr_reader :player1, :player2, :current_player
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player2
  end

  def change_players
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def new_turn
    while(@player1.lives > 0 && @player2.lives > 0)
      self.change_players

      print "#{@current_player.name}: "

      new_question = Question.new

      current_player_question = new_question.ask_question
      current_answer = new_question.answer
      answer = gets.chomp

      if answer.to_i == current_answer
        puts "You are correct, #{@current_player.name}!"
      end

      if answer.to_i != current_answer
        puts "WRONG! Better luck next time, #{@current_player.name}!"
        @current_player.lose_life
      end

      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"

      if (@player1.lives > 0 && @player2.lives > 0)
        puts "--- NEW TURN ---"
      end
    end
    self.change_players
    puts "--- GAME OVER ---"
    puts "*** #{@current_player.name} wins with a score of #{@current_player.lives}! ***"
  end

end


 
