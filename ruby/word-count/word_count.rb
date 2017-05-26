class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = {}
    to_words(phrase).map do |word|
      count[word] ||= 0
      count[word] += 1
    end
    count
  end

private

  def to_words(phrase)
    phrase.split(%r{[ ,]}).reject {|word| word.empty? }.map do |w|
      w.downcase.gsub(%r{^[^a-z0-9]|[^a-z0-9]*\z}, "")
    end
  end

end

class BookKeeping
  VERSION = 1
end
