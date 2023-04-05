class Passenger

  attr_reader :name, :age, :adult

  def initialize(player_info)
    @name = player_info["name"]
    @age = player_info["age"]
    @adult = adult
  end

  def adult?
      if @age >= 18 
        @adult = true
      else @adult = false 
      end
  end

end