class Board
  attr_accessor :cells

  def initialize
    reset!
  end #init

  def reset!
    @cells = Array.new(9, " ")
  end #reset

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end #display

  def position(input)
    @cells[input.to_i - 1]
  end #position

  def full?
    !@cells.include?(" ")
  end

  def update(input, player)
    @cells[input.to_i - 1] = player.token
  end #update

  def turn_count
    occupied = cells.select{|cell| cell != " "}
    occupied.length
  end #turn_count

  def taken?(input)
    ["X", "O"].include?(cells[input.to_i - 1])
  end #taken?

  def valid_move?(input)
    if taken?(input) || input.to_i < 1 || input.to_i > 9
      false
    else
      true
    end #if 
  end #valid_move?

end #class