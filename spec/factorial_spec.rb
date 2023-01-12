describe Factorial do
  context "When passed a number to find factorial" do
    it "expect factorial of 5 tobe 120" do
      factorial=Factorial.new
      expect(factorial.factorial(5)).to eq 120
    end
  end

end
