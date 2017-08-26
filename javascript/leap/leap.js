//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//
var year = function(year) {
  this.year = year
};


year.prototype.isLeap = function() {

  if (this.year % 4 === 0 && (this.year % 100 !== 0 || this.year % 400 === 0)) {
    return true
  } else {
    return false
  }
};


module.exports = year;
