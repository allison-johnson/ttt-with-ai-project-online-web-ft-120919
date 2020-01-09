module Players
  class Computer < Player

    def move(board)
      if board.cells == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        "4"
      elsif board.turn_count < 3
        num = rand(1..9).to_s
        while !board.valid_move?(num) do
          num = rand(1..9).to_s
        end #while
        num
      elsif board.cells[0] == board.cells[1] && board.cells[2] == " "
        "3"
      elsif board.cells[0] == board.cells[2] && board.cells[1] == " "
        "2"
      elsif board.cells[1] == board.cells[2] && board.cells[0] == " "
        "1"
      elsif board.cells[3] == board.cells[4] && board.cells[5] == " "
        "6"
      elsif board.cells[3] == board.cells[5] && board.cells[4] == " "
        "5"
      elsif board.cells[4] == board.cells[5] && board.cells[3] == " "
        "4"
      elsif board.cells[6] == board.cells[7] && board.cells[8] == " "
        "9"
      elsif board.cells[6] == board.cells[8] && board.cells[7] == " "
        "8"
      elsif board.cells[7] == board.cells[8] && board.cells[6] == " "
        "7"
      elsif board.cells[0] == board.cells[3] && board.cells[6] == " "
        "7"
      elsif board.cells[0] == board.cells[6] && board.cells[3] == " "
        "4"
      elsif board.cells[3] == board.cells[6] && board.cells[0] == " "
        "1"
      elsif board.cells[1] == board.cells[4] && board.cells[7] == " "
        "8"
      elsif board.cells[1] == board.cells[7] && board.cells[4] == " "
        "5"
      elsif board.cells[4] == board.cells[7] && board.cells[1] == " "
        "2"
      elsif board.cells[2] == board.cells[5] && board.cells[8] == " "
        "9"
      elsif board.cells[2] == board.cells[8] && board.cells[5] == " "
        "6"
      elsif board.cells[5] == board.cells[8] && board.cells[2] == " "
        "3"
      elsif board.cells[0] == board.cells[4] && board.cells[8] == " "
        "9"
      elsif board.cells[0] == board.cells[8] && board.cells[4] == " "
        "5"
      elsif board.cells[4] == board.cells[8] && board.cells[0] == " "
        "1"
      elsif board.cells[2] == board.cells[4] && board.cells[6] == " "
        "7"
      elsif board.cells[2] == board.cells[6] && board.cells[4] == " "
        "5"
      elsif board.cells[4] == board.cells[6] && board.cells[2] == " "
        "3"
      elsif board.cells[4] == " "
        "4"
      else
        num = rand(1..9).to_s
        while !board.valid_move?(num) do
          num = rand(1..9).to_s
        end #while
        num
      end #if
    end #move

  end #class
end #module