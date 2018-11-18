class Translation
  RNA_TRANS = {
    'Methionine' => %w(AUG),
    "Phenylalanine" => %w(UUU UUC),
    "Leucine" => %w(UUA UUG),
    "Serine" => %w(UCU UCC UCA UCG),
    "Tyrosine" => %w(UAU UAC),
    "Cysteine" => %w(UGU UGC),
    "Tryptophan" => %w(UGG),
    "STOP" => %w(UAA UAG UGA),
  }
  
  def self.of_codon(rna)
    RNA_TRANS.select {|k,v| v.include?(rna)}.keys.first or raise InvalidCodonError
  end
  
  def self.of_rna(strand)
    strand.scan(/.../).inject([]) do |output, chunk|
      rna = Translation.of_codon(chunk)
      return output if rna == "STOP"
      output << rna 
    end
  end
end
class InvalidCodonError < StandardError; end
