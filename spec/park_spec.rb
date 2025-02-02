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

      expect(park.vehicles).to eq([])
    end
    it 'can add vehicles that entered the park' do
      park = Park.new("Yosemite National Park", 25)

      expect(park.vehicles).to eq([])

      vehicle = Vehicle.new("2001", "Honda", "Civic")
      vehicle2 = Vehicle.new("2008", "Nissan", "Altima")
      
      park.add_vehicle(vehicle)
      park.add_vehicle(vehicle2)

      expect(park.vehicles).to eq([vehicle, vehicle2])
    end
    it 'can check for passengers in vehicle' do
      park = Park.new("Yosemite National Park", 25)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(taylor)

      park.add_vehicle(vehicle)

      expect(park.passengers).to eq([[charlie, taylor]])
    end
  end
  describe '#revenue' do
    it 'can calculate revenue' do
      park = Park.new("Yosemite National Park", 25)
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      park.add_vehicle(vehicle)
      expect(park.revenue).to eq(50)
    end
  end
  describe '#iteration-4 attempt' do
    it 'can generate list of all attendees' do
      park = Park.new("Yosemite National Park", 25)

      vehicle1 = Vehicle.new("2001", "Honda", "Civic")

      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

      vehicle1.add_passenger(charlie)
      vehicle1.add_passenger(jude)
      vehicle1.add_passenger(taylor)

      park.add_vehicle(vehicle1)

      vehicle2 = Vehicle.new("2001", "Honda", "Civic")

      james = Passenger.new({"name" => "James", "age" => 28})
      john = Passenger.new({"name" => "John", "age" => 16})
      justin = Passenger.new({"name" => "Justin", "age" => 5})  

      vehicle2.add_passenger(james)
      vehicle2.add_passenger(john)
      vehicle2.add_passenger(justin)

      park.add_vehicle(vehicle2)

      expect(park.all_attendees).to eq(["Charlie", "Jude", "Taylor", "James", "John", "Justin"])
    end
  end
end