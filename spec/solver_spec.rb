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
  end
end
