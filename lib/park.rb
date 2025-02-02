class Park
  attr_reader :name, :admission_price, :vehicles, :passengers, :revenue
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
    @revenue = 0
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    @passengers << vehicle.passengers

    vehicle.passengers.find_all do |passenger|
      if passenger.age >= 18
      @revenue += admission_price
      end
    end
  end

  def all_attendees
    name_array = @passengers.each do |passenger|
      passenger.find_all do |passenger_name|
        require 'pry'; binding.pry
        passenger.name
      end
    end
    name_array
  end
end