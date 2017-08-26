var pry = require('pryjs');
var pangram = function(string){
  this.string = string
};

pangram.prototype.isPangram = function() {
  var cleanedChars = cleanChars(getUnique(this.string))
  eval(pry.it);
  if(cleanedChars.length === 26) {
    return true
  } else {
    return false
  }
};

function getUnique(string){
  var unique = string.toLowerCase().split('').filter(function(elem, index, self) {
    return index == self.indexOf(elem);
  })
  return unique.join('')
}

function cleanChars(string){
  var clean = string.replace(/[^a-z]/g, '');
  return clean
}

module.exports = pangram;
