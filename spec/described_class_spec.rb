class Prince
  attr_reader :name

  def initialize(name)
    @name = name
  end
end


# RSpec.describe King do
# instead of constantly instantiating variables
#   subject { King.new('James') }
#
#   let(:louis) {King.new('Louis')}
# end

RSpec.describe Prince do
  subject { described_class.new('James')}

  let(:david) {described_class.new('David')}

  it 'represents a great person in Basket Ball' do
    expect(subject.name).to eq('James')
  end

  it 'represents a great king in the Bible' do
    expect(david.name).to eq('David')
  end
end
