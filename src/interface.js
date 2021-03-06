$( document ).ready(function(){

  var thermostat = new Thermostat()

  function updateTemperature(){
    $("#current_temp").text(thermostat.gettingCurrentTemperature() +  String.fromCharCode(176) + "C")
    $("#current_temp").attr('class', thermostat.energyUsage())
  }

  $("#temperature").text("Current temperature: ")
  updateTemperature()

  $("#power-saving-status").text(thermostat.isPowerSavingOn())

  $("#temperature_up").click(function(){
    thermostat.up()
    updateTemperature()
  })

  $("#temperature_down").click(function(){
    thermostat.down()
    updateTemperature()
  })

  $("#reset").click(function(){
    thermostat.reset()
    updateTemperature()
  })

  $("#powersavingon").click(function(){
    thermostat.powerSavingOn()
    $("#power-saving-status").text(thermostat.isPowerSavingOn())
  })

  $("#powersavingoff").click(function(){
    thermostat.powerSavingOff()
    $("#power-saving-status").text(thermostat.isPowerSavingOn())
  })

   displayWeather('London');

$('#city_name').submit(function(event) {
  event.preventDefault();
  var city = $("input:first").val();

  displayWeather(city);
})
 function displayWeather(city){
  var key = '47c1b6aeef267b6a8f2431fad83b01e4';
  var url = 'http://api.openweathermap.org/data/2.5/weather?q='
  $.get(url + city +'&appid='+key, function(weatherLondon){
    var temp = Math.round(weatherLondon.main.temp - 273.15) + String.fromCharCode(176) + "C"
    $("#city").text(city + " temperature: ")
    $("#city_temp").text(temp)
 })
}

  })
