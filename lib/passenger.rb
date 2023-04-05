class Passenger

  attr_reader :name, :age, :adult, :driver

  def initialize(player_info)
    @name = player_info["name"]
    @age = player_info["age"]
    @adult = adult
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