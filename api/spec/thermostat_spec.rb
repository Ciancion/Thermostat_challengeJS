describe Thermostat do
  it 'Returns the current thermostat' do
    Thermostat.create(thermostat_temp: 23, city: "London")
    expect(Thermostat.get_thermostat().thermostat_temp).to eq(23)
  end
end
