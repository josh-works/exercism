class RunLengthEncoding

  def self.encode(input)
    input.each_char.chunk(&:itself).map do |n|
      "#{n[1].length if n[1].length > 1}" + "#{n[0]}"
    end.join
  end

  def self.decode(input)
    input.gsub(/(\d+)(\D)/) {$2.to_s * $1.to_i}
  end

end
