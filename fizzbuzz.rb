# all numbers equally divisible by 3 to print "fizz"
# all numbers equally divisible by 5 to print "buzz"
# unless that number is equally divisible by 5 and 3, then print "fizzbuzz"

class Fizzbuzz
  def output(number)
    return "fizzbuzz" if number % 15 == 0 
    return "buzz" if number % 5 == 0 
    return "fizz" if number % 3 == 0
    number
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

Fizzbuzz.new.go

RSpec.describe Fizzbuzz do
  let(:fizzbuzz) {Fizzbuzz.new}
  describe '#output' do
    it 'should return 1 if given 1' do
      expect(fizzbuzz.output(1)).to eq(1)
    end
    it 'should return 2 if given 2' do
      expect(fizzbuzz.output(2)).to eq(2)
    end
    it 'should return "fizz" if given 3' do
      expect(fizzbuzz.output(3)).to eq("fizz")
    end
    it 'should return 4 if given 4' do
      expect(fizzbuzz.output(4)).to eq(4)
    end
    it 'should return "buzz" if given 5' do
      expect(fizzbuzz.output(5)).to eq("buzz")
    end
    it 'should return "fizz" if given 6' do
      expect(fizzbuzz.output(6)).to eq("fizz")
    end
    it 'should return 7 if given 7' do
      expect(fizzbuzz.output(7)).to eq(7)
    end
    it 'should return 8 if given 8' do
      expect(fizzbuzz.output(8)).to eq(8)
    end
    it 'should return "fizz" if given 9' do
      expect(fizzbuzz.output(9)).to eq("fizz")
    end
    it 'should return "buzz" if given 3' do
      expect(fizzbuzz.output(10)).to eq("buzz")
    end
    it 'should return "fizzbuzz" if given 15' do
      expect(fizzbuzz.output(15)).to eq("fizzbuzz")
    end
    it 'should return "buzz" if given 100' do
      expect(fizzbuzz.output(100)).to eq("buzz")
    end
    it 'should return "fizzbuzz" if given 90' do
      expect(fizzbuzz.output(90)).to eq("fizzbuzz")
    end

  end
end