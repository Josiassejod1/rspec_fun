require '../MVC2.rb'
RSpec.describe MVC2 do
  describe '#show_all' do
    it 'should show a character' do
      expect(subject.show_all.length).to eq(57)
    end
  end

  describe '#show_a_character' do
    it 'should show a character' do
      response = subject.show_a_character("Akuma")

      expect(response.first["name"]).to eq("Akuma")
    end
  end
end
