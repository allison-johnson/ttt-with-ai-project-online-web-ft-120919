module Players
  class Human < Player

    def move(board)
      puts "Human, please enter your next move:"
      choice = gets.chomp
    end #move

  end #class
end #module