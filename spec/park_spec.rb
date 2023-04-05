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
end