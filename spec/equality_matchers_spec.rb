RSpec.describe 'equality matchers' do
  let(:a) {3.0}
  let(:b) {3}

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      #value comparison
      expect(a).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for the value, including the same type' do
      #type and value
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do
    #equality vs identity
    #c & d are equal not identical
    #e & c are identical, they are the same
    let(:c) { [1,2,3] }
    let(:d) { [1,2,3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)
      expect(c).to equal(e)
      expect(c).not_to equal(d)
    end
  end

  describe 'equal matcher' do
    let(:c) { 'Travis Scott' }
    let(:d) { 'Travis Scott' }
    let(:e) {c}

    it 'should equal in type, value, and identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)
      expect(c).not_to eql(e)
    end
  end
end
