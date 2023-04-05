class Passenger

  attr_reader :name, :age

  def initialize(player_info)
    @name = player_info[:name]
    @age = player_info[:age]
  end

end