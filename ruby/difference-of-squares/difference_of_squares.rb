class BookKeeping
  VERSION = 3
end

class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
    while @number == 0
      return 0
    end
    (1..@number).to_a.inject(:+) ** 2
  end

  def sum_of_squares
    while @number == 0
      return 0
    end
    (1..@number).to_a.inject { |sum, n| sum + n ** 2 }
  end

  def difference
    a = Squares.new(@number).square_of_sum
    b = Squares.new(@number).sum_of_squares
    return a - b

  end

end
