class Array

  def accumulate
    map { |n| yield n }
  end
end


class BookKeeping
  VERSION = 1
end
