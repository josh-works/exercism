var dnaTranscriber = function() {}

dnaTranscriber.prototype.toRna(rna) = function() {}

module.exports = (dnaTranscriber)

// // this works
// var dnaTranscriber = function(){
//   this.substitute = {
//     G: 'C',
//     C: 'G',
//     T: 'A',
//     A: 'U'
//   }
// }
//
//
// dnaTranscriber.prototype.toRna = function(dna) {
//   substitute = this.substitute
//   validate(dna, substitute)
//   var results = []
//   for (var i = 0; i < dna.length; i++) {
//     results.push(substitute[dna[i]])
//   }
//   return results.join('')
// };
//
// function validate(dna, validInput){
//   var invalidInput = "Invalid input"
//   for (var i = 0; i < dna.length; i++){
//     if(!(dna[i] in validInput)) throw invalidInput
//   }
// }
//
// module.exports = dnaTranscriber;
