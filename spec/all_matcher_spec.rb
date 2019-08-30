RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    #[5, 7, 9].each { |val| expect(val).to be_odd
    expect([5, 9, 7]).to all(be_odd)
    expect([2, 4, 6]).to all(be_even)
    expect([[], [], []]).to all(be_empty)
    expect([5, 7, 9]).to all(be < 10)
  end

  it 'allows for aggregate checks on hash values' do
    expect({s: 5, t: 3, w: 9
    }.values).to all(be_odd)
  end

  it 'allows for aggregate checks on string ' do
    expect({s: 5, t: 3, w: 9
    }.keys).to include(:s)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be_odd) }
    it { is_expected.to all(be < 10) }
  end
end
