RSpec.describe Hash do
  # let(:my_hash) {{}}
  #let(:subject) {Hash.new} == subject instantiate instance of class
  it 'should start off empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
  end

  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:key] = "YERDDD"

    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end
