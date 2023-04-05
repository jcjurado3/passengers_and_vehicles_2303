require './lib/vehicle'
require './lib/passenger'
require './lib/park'
require 'rspec'

RSpec.describe Park do
  describe '#initialize' do
    it 'exists' do
      park = Park.new("Yosemite National Park", 25)

      expect(park).to be_a(Park)
    end
    it 'has attributes' do
      park = Park.new("Yosemite National Park", 25)

      expect(park.name).to eq("Yosemite National Park")
      expect(park.admission_price).to eq(25)

    end
  end
  describe '#vehicles_in_park' do
    it 'can check for vehicles in park' do
      park = Park.new("Yosemite National Park", 25)

      expect(park.vehicles_in_park).to eq([])
    end
    it 'can add vehicles that entered the park' do
      park = Park.new("Yosemite National Park", 25)

      expect(park.vehicles_in_park).to eq([])

      vehicle = Vehicle.new("2001", "Honda", "Civic")
      vehicle2 = Vehicle.new("2008", "Nissan", "Altima")
      
      park.add_vehicle(vehicle)
      park.add_vehicle(vehicle2)

      expect(park.vehicles_in_park).to eq([vehicle, vehicle2])

    end
  end
end