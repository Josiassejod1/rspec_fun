RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    allow(calculator).to recieve(:add)
    expect(calculator.add).to be_nil
  end
end
