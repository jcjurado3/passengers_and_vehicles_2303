class Passenger

  attr_reader :name, :age, :adult, :driver

  def initialize(passenger_details)
    @name = passenger_details["name"]
    @age = passenger_details["age"]
    @driver = false
  end

  def adult?
      if @age >= 18 
        @adult = true
      else @adult = false 
      end
  end
  def drive
    @driver = true
  end

  def driver?
    @driver
  end
end