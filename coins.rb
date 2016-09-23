require 'rspec'

class Coin

  def output(number)
    denominations = [25,10,5,1]
    coin_array = []

    denominations.each do |denomination|
      while number >= denomination
        coin_array << denomination
        number -= denomination
      end
    end
    coin_array
  end
end

Coin.new.output(119)

RSpec.describe Coin do 
let(:coin)  { Coin.new }

  describe '#output' do

    it 'should return coin_array if given 119' do
      expect(coin.output(119)).to eq([25,25,25,25,10,5,1,1,1,1])
    end
  end
end


