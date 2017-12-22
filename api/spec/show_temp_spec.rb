require 'spec_helper'

feature "Check if thermostat temperature is saved" do
  scenario "Save themostat temperature at 23 degrees" do
    Thermostat.create(thermostat_temp: 23)
    visit('/temperature')
    expect(page).to have_content(23)
  end
end
