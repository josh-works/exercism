# borrowed from http://exercism.io/submissions/a04a475b6565457db50f220c535c617e

module BookKeeping
  VERSION = 4
end

class Complement

  def self.of_dna(string)
    dna_to_rna = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    string.chars.each_with_object('') do |dna, rna|
      rna << "#{dna}, rna"

      # rna << dna_to_rna[dna]
    end
  end
end
