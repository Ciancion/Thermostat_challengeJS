feature 'Show city' do
  scenario 'Page contains city name in json' do
    Thermostat.create(city: "London")
    visit '/city'
    expect(page).to have_content("London")
  end
end
