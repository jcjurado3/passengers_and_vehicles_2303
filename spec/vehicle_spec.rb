require './lib/vehicle'
require './lib/passenger'
require 'rspec'

RSpec.describe Vehicle do
  describe '#initialize' do
    it 'exists' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_a(Vehicle)
    end
    it 'has attributes' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")

    end
  end
  describe '#speeding?' do
    it 'can check for speeding' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to be(false)
    end
    it 'can add speed' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to be(false)

      vehicle.speed

      expect(vehicle.speeding?).to be(true)
    end
  end
  describe '#passengers' do
    it 'exists' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      expect(vehicle.passengers).to eq([])
    end
  end
end