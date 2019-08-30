RSpec.describe Array do
  subject(:sally) do
    [1, 3]
  end

  describe "array manipulation" do
    it "has two elements available" do
      expect(sally.length).to eq(2)
      sally.pop(1)
      expect(sally.length).to eq(1)
    end

    it "has two elements available" do
      expect(sally.length).to eq(2)
    end
  end
end
