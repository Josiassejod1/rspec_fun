require './spec/support/shared_context_helper.rb'

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@foods.length).to eq(0)

    @foods << 'Rice'
    expect(@foods.length).to eq(1)
  end

  it 'can reuse instance variables' do
    expect(@foods.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'second example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(some_variable).to eq([1,3,4])
  end
end
