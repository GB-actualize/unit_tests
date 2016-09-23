require 'rspec'

class Coin

  def output(number)
    coin_array = []

    while number > 0

        if number >= 25
          number -= 25
          coin_array << "quarter"

        
        elsif number >= 10
          number -= 10
          coin_array << "dime"

       
        elsif number >= 5
          number -= 5
          coin_array << "nickel"

        else number >= 1
          number -= 1
          coin_array << "penny" 

        end

    end
    # return "dime" if number % 10 == 0 
    # return "nickel" if number % 5 == 0
    # return "penny" if number % 1 == 0

    coin_array
  end

end

#   def go(number)
#     coin_array = []
#     if number % 25 == 0
#       number -= 25
#       coin_array << "quarter"
#       coin_array
#     end
#   end
# end

# Coin.new.go
Coin.new.output(119)

RSpec.describe Coin do 
let(:coin)  { Coin.new }

  describe '#output' do

    it 'should return coin_array if given 119' do
      expect(coin.output(119)).to eq(["quarter","quarter","quarter","quarter","dime","nickel","penny","penny","penny","penny",])
    end
    # it 'should return "dime" if given 10' do
    #   expect(coin.output(85)).to eq(["dime","quarter","quarter","quarter"])
    # end

    # it 'should return "nickel" if given 5' do
    #   expect(coin.output(90)).to eq(["nickel", "dime","quarter","quarter","quarter"])
    # end

    # it 'should return "penny" if given 1' do
    #   expect(coin.output(2)).to eq("penny")
    # end

    # it 'should return "nickel" if given 5' do
    #   expect(coin.output(5)).to eq("nickel")
    # end


    # it 'should return "quarter" if given 25' do
    #   expect(coin.output(83)).to eq("quarter")
    # end

  end
end


