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
    it 'it can add passengers as an attribute to Vehicle' do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end
end