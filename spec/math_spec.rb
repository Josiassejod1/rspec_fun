Rspec.describe 'Math' do
  describe 'math calculations' do
    let(:math)  {Math.new}

    it "adds two numbers" do
        expect(math.sum(3, 4)) to eq(5)
    end

    it "subtracts two numbers" do
        expect(math.subtract(3,4)).to eq(-1)
    end

    it "power of a number" do
        expect(math.power(3, 2)).to eq(9)
    end

    it "returns pi" do
        expect(math.pi).to eq(3.14)
    end
  end
end
