require_relative '../ruby/solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe '#new' do
    it 'initializes the class' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'should return factorial of number' do
      factorial = @solver.factorial(4)
      expect(factorial).to eq 24
    end
    it 'should return 1 if number is 0' do
      factorial = @solver.factorial(0)
      expect(factorial).to eq 1
    end
    it 'should raise error if number is negative' do
      expect { raise StandardError }.to raise_error StandardError
    end
  end

  describe '#reverse' do
    it 'should reverse a string' do
      reversed_string = @solver.reverse('hello')
      expect(reversed_string).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    def f_b(num)
      @solver.fizzbuzz(num)
    end

    it 'should return fizz if number is divisible by 3' do
      expect(f_b(9)).to eq 'fizz'
    end
    it 'should return buzz if number is divisible by 5' do
      expect(f_b(25)).to eq 'buzz'
    end
    it 'should return fizzbuzz if number is divisible by 3 and 5' do
      expect(f_b(30)).to eq 'fizzbuzz'
    end
    it 'should return number as a string if not divisible by 3 or 5' do
      expect(f_b(17)).to eq '17'
    end
  end
end
