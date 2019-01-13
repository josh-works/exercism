class SpaceAge{
  constructor(seconds){
  this.seconds = seconds;
}
  onEarth(){
    let years = this.seconds/31557600
    return this.formatNumber(years)
  }
  onMercury() {
    return this.formatNumber(this.onEarth()/0.2408467)
  }
  onVenus(){
    let years = this.seconds/31557600
    return this.formatNumber(years/0.61519726)
  }
  onMars(){
    return this.formatNumber(this.onEarth()/1.8808158)
  }
  onJupiter(){
    return this.formatNumber(this.onEarth()/11.862615)
  }
  onSaturn(){
    return this.formatNumber(this.onEarth()/29.447498)
  }
  onUranus(){
    return this.formatNumber(this.onEarth()/84.016846)
  }
  onNeptune(){
    return this.formatNumber(this.onEarth()/164.79132)
  }
  
  formatNumber(num){
    return Number(parseFloat(num.toFixed(2)))
  }
}


export {SpaceAge}