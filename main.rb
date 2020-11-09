
require './player.rb'
require './question.rb'

class Game
  #current player holder
  attr_accessor :current_player

  #set bother players and the current player default to player 1
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end 

  #determine current player of the turn
  def turn_current_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  # starts game
  def play
    
    #loops through question until a player is at 0 lives
    while @player1.lives > 0 && @player2.lives > 0

      puts "#{current_player.name}'s turn."

      # creates new question, prints, takes input
      question = Question.new       
      puts "What does #{question.first_num} plus #{question.second_num} equal?"
      input = gets.chomp.to_i

      #checks input agains answer and prints lives accordingly
      if input == question.answer 
        puts "YES! You are correct."
      else
        puts "Seriously? No!"
        current_player.lives -= 1
      end
      puts "#{@player1.name} #{@player1.lives}/3 vs #{@player2.name} #{@player2.lives}/3"
      
      # if both players still have lives, change player else print the winner
      if current_player.lives > 0 
        turn_current_player
      else 
        turn_current_player 
        puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
      end
    end
  end
end

game = Game.new
game.play
