
class Robot
  attr_reader :name, :robot_names

  @@names = []

  def initialize
    @name = make_name
  end

  def make_name
    letters = ('a'..'z').to_a.shuffle[0..1].join.upcase
    numbers = (0..9).to_a.shuffle[0..2].join
    name = letters + numbers.to_s
    if taken?(name)
      name = letters + numbers.to_i.succ.to_s.rjust(3, "0")[0..2]
    end
    @@names << name
    return name
  end

  def taken?(name)
    @@names.include?(name)
  end

  def reset
    @name = make_name
  end
end

class BookKeeping
  VERSION = 2
end
