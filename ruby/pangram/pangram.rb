require 'pry'

class Pangram

  def self.pangram?(phrase)
    phrase.split('').sort.uniq.join.gsub(/[^a-z]/i, '').count
    binding.pry
  end
end

class BookKeeping
  VERSION = 3
end
