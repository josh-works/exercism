class Year

  class << self
    def leap?(year)
      div_by_4?(year) && century_check?(year)
    end


private

    def div_by_4?(year)
      return true if year % 4 == 0
    end

    def century_check?(year)
      return true if year % 100 != 0
      return true if year % 400 == 0
      return false if year % 100 == 0
    end
  end
end

class BookKeeping
  VERSION = 3
end
