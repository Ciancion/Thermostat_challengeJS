ENV['RACK_ENV'] = 'development'

require 'sinatra/base'
require 'json'
require_relative './models/setup'


class ThermostatApp < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/temperature' do
    thermostat = Thermostat.get_thermostat()
    {temperature: thermostat.thermostat_temp}.to_json()
  end

  post '/temperature' do
    thermostat = Thermostat.get_thermostat()
    thermostat.update(thermostat_temp: params["thermostat_temp"])
    thermostat.save
    p Thermostat.all
  end

  get '/city' do
    thermostat = Thermostat.get_thermostat()
    {city: thermostat.city}.to_json()
  end

  post '/city' do

  end

    run if app_file == $0
end
