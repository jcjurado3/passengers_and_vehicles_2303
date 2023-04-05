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
  describe '#adult?' do
    it 'has adult method' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

      expect(charlie.adult?).to be(true)
      expect(taylor.adult?).to be(false)

    end
  end

  describe '#driver?' do
    it 'can check for driver' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

      expect(charlie.driver?).to be(false)
    end
    it' can add driver' do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

      expect(charlie.driver?).to be(false)

      charlie.drive

      expect(charlie.driver?).to be(true)
    end
  end

end