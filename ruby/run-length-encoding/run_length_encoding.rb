require 'pry'
class RunLengthEncoding

  def self.encode(input)
    input.each_char.chunk(&:itself).map do |char, chars|
      "#{char.size if char.size > 1}, #{char}"
    end
  end

  def self.decode(input)

  end

end

# Working solution, pulled from online.
# module RunLengthEncoding
#   module_function
#
#   def encode(s)
#     # Group into runs of same characters:
#     s.each_char.chunk(&:itself).map { |char, chars|
#       "#{chars.size if chars.size > 1}#{char}"
#     }.join
#   end
#
#   def decode(s)
#     # The README states that the unencoded string 100% won't contain numbers.
#     # That's good. If it did, "21X" could decode to "XXXXXXXXXXXXXXXXXXXXX" or "11X".
#     # https://github.com/exercism/x-common/issues/238
#     # I don't really like using $1 and $2, but the block arg is a String.
#     s.gsub(/(\d+)(\D)/) { $2 * $1.to_i }
#   end
# end
