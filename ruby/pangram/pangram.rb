class Pangram

  def self.pangram?(phrase)
    letters = phrase.downcase.gsub(/[^a-z]/, '').split('').sort.uniq
    if letters.count == 26
      return true
    else
      return false
    end
  end
end

class BookKeeping
  VERSION = 3
end
