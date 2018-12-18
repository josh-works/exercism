class Hamming
  def self.method_missing(method, *args)
    super unless %w[compute].include? method.to_s
    raise ArgumentError if (args[0].length != args[1].length)
    args[0].split('').each_with_index.reduce(0) do |counter, (char, index)|
      counter += 1 if char != args[1][index]
      counter
    end
  end
end
