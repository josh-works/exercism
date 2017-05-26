module DnaComplements
  COMPLEMENTS = {G: "C", C: "G", T: "A", A: "U"}
end

class Complement
  include DnaComplements

  def self.of_dna(dna)
    return '' if /[^GCTA]/ =~ dna
    dna.split('').reduce('') do |output, char|
      output + COMPLEMENTS[char.to_sym]
    end
  end
end

class BookKeeping
  VERSION = 4
end
