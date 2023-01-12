require_relative '../solver'
describe Solver do
  context 'When passed an input' do
    solver = Solver.new
    it 'expect factorial of 5 tobe 120' do
      expect(solver.factorial(5)).to eq 120
    end
    it 'expect positive number ' do
      expect(solver.factorial(5)).to be >= 0
    end
    it 'Expect hello to be reversed to olleh' do
      expect(solver.reverse('hello')).to eq 'olleh'
    end
    it 'Expect 6 to return fizz' do
      expect(solver.fizzbuzz(6)).to eq 'fizz'
    end
    it 'Expect 10 to return buzz' do
      expect(solver.fizzbuzz(10)).to eq 'buzz'
    end
    it 'Expect 15 to return fizzbuzz' do
      expect(solver.fizzbuzz(15)).to eq 'fizzbuzz'
    end
  end
end
