class Grains

  def self.square(num)
    validate_input(num)
    space = 1
    (num - 1).times do |i|
      space += space
    end
    space
  end

  def self.total(board = 64)
    (2 ** board) - 1
  end

private

  def self.validate_input(num)
    raise ArgumentError unless (1..64).include?(num)
  end
end

class BookKeeping
  VERSION = 1
end
