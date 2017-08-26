var hamming = function() {};

hamming.prototype.compute = function(string1, string2) {
  validate(string1, string2)
  var difference = 0
  for (var i = 0; i < string1.length; i++){
    if (string1[i] !== string2[i]){
      difference += 1
    }
  }
  return difference
};

function validate(str1, str2){
  var lengthError = "DNA strands must be of equal length."
  if(str1.length != str2.length) throw lengthError
}

module.exports = hamming;
