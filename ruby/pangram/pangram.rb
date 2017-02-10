class BookKeeping
  VERSION = 3
end

class Pangram
  @alphabet = ('a'..'z').to_a
  def self.pangram?(phrase) # needs to return boolean!
    (@alphabet - phrase.downcase.gsub(/[^\w]/, '').split('')).empty?
  end
end
