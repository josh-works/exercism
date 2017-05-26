require 'pry'
class Bob

  def self.hey(text)
    
    if ((%r{^[^\w]}.match(text) || %r{(^[\s])}.match(text)) || text.empty?) && !(%r{[\n]}.match(text))
      return "Fine. Be that way!"
    elsif text == text.upcase && %r{[a-z]}i =~ text
      return "Whoa, chill out!"
    elsif text[-1] == "?"
      return "Sure."
    else
      return "Whatever."
    end
  end

end
