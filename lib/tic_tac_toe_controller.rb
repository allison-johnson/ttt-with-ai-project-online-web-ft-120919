class TicTacToeController
  attr_accessor :game

#   def initialize
#     @game = Game.new
#   end #init

  def call
    puts "Hello, and welcome to Tic-Tac-Toe!"
    user_choice = ""
    while user_choice != "exit"
      puts "\nTo play a Human v. Human game, enter (1)"
      puts "To play a Human v. Computer game, enter (2)"
      puts "To see a Computer v. Computer game, enter (3)"
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      user_choice = gets.strip

      if user_choice == "1"
        puts "Starting HUMAN V. HUMAN game..."
        Game.new.play
      elsif user_choice == "2"
        puts "Starting HUMAN V. COMPUTER game..."
        Game.new(Players::Human.new("X"), Players::Computer.new("O"), Board.new).play
      elsif user_choice == "3"
        puts "Starting COMPUTER V. COMPUTER game..."
        Game.new(Players::Computer.new("X"), Players::Computer.new("O"), Board.new).play
      end #if
    end #while
    #game.play
  end #call

end #class