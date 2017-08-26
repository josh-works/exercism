class Gigasecond

  def self.from(start_date)
    Time.at(start_date) + 1000000000
  end

end


class BookKeeping
  VERSION = 5
end
