require 'dm-postgres-adapter'
require 'data_mapper'
require_relative '../app'

class Thermostat
  include DataMapper::Resource

  property :id, Serial
  property :thermostat_temp, Integer
  property :city, String

  def self.get_thermostat()
    if Thermostat.all.length == 0
      Thermostat.create(thermostat_temp: 20, city: "London")
    end
      return self.all()[0]
  end
end
