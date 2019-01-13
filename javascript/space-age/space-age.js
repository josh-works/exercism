class SpaceAge{
  constructor(seconds){
  this.seconds = seconds;
}
  onEarth(){
    let years = this.seconds/31557600
    return parseFloat(years.toFixed(2))
  }
  
  onMercury() {
    var earth = this.seconds/31557600
    return parseFloat((earth/0.2408467).toFixed(2))
  }
  
  onVenus(){
    var earth = this.seconds/31557600
    return parseFloat((earth/0.61519726).toFixed(2))
  }
  onMars(){
    var earth = this.seconds/31557600
    return parseFloat((earth/1.8808158).toFixed(2))
  }
  onJupiter(){
    var earth = this.seconds/31557600
    return parseFloat((earth/11.862615).toFixed(2))
  }
  onSaturn(){
    var earth = this.seconds/31557600
    return parseFloat((earth/29.447498).toFixed(2))
  }
  onUranus(){
    var earth = this.seconds/31557600
    return parseFloat((earth/84.016846).toFixed(2))
  }
  onNap(){
    var earth = this.seconds/31557600
    return parseFloat((earth/164.79132).toFixed(2))
  }
}


export {SpaceAge}