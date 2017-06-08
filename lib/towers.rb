# require 'byebug'
class TowersOfHanoi

  attr_reader :towers

  def initialize(towers = [[3, 2, 1], [], []])
    @towers = towers
  end

  def move(from_tower, to_tower)
    # from_tower, to_tower = get_move
    disc = towers[from_tower].pop
    @towers[to_tower] << disc
  end

  def valid_move?(from_tower, to_tower)
    return true if towers[to_tower].empty?
    towers[from_tower].last < towers[to_tower].last
  end

  def get_move
    # debugger
    puts "Enter towers to move disc from and to e.g. '0, 1': "
    input = gets.chomp
    input = input.split(', ')
    input.map! { |el| el.to_i }
    from, to = input
    move(from, to) if valid_move?(from, to)
  end

  def play
    until won?
      get_move
      print towers
      puts
    end
    puts "You win!....nothing!!!"
  end

  def won?
    towers[0].empty? && (towers[1].empty? || towers[2].empty?)
  end

end

if __FILE__ == $PROGRAM_NAME
  toh = TowersOfHanoi.new
  toh.play
end
