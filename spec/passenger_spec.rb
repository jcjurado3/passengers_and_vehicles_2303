require './lib/passenger'
require 'rspec'

RSpec.describe Passenger do
  describe '#initialize' do
    it 'exits' do 
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})    

      expect(charlie).to be_a(Passenger)
      expect(taylor).to be_a(Passenger)
    end

    it 'has attributes' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
    end
  end

end