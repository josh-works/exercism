require 'pry'
class Pangram

  def self.pangram?(phrase)
    results = format_phrase(phrase)
    evaluate_result(results)
  end

  private
    def self.format_phrase(input)
      input.downcase.split('').uniq.reject do |c|
        c.match(/[^a-z]/i)
      end
    end

    def self.evaluate_result(array)
      ('a'...'z').to_a.each do |char|
        return false unless array.include?(char)
      end
      true
    end
end


class BookKeeping
  VERSION = 3
end
