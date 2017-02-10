class BookKeeping
  VERSION = 4
end

class Complement
  RNA_COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
    }

    def self.of_dna(dna)
      if /[^GCTA]+/ =~ dna
        return '' # signifies invalid input
      end
      array = dna.split('')
      results = []
      array.each do |char|
        results.push(RNA_COMPLEMENT[char])
      end
      return results.join
    end



end
