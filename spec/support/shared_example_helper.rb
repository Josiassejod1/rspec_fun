RSpec.shared_examples 'a Ruby object with length method' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end
