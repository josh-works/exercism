require 'pry'
class Pangram

  def self.pangram?(phrase)
    binding.pry
    current = phrase.split('').uniq.join.gsub('/[^a-z]/i', '')
    p current
    p current.length
    evaluate_result(current)
  end

  private

    def self.evaluate_result(phrase)
      if phrase.length == 26
         true
      else
        false
      end
    end
end
