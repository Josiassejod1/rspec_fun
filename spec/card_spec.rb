class Card
  attr_reader :rank, :suite
  def initialize(rank, suite)
    @rank =  rank
    @suite = suite
  end
end


RSpec.describe Card do
  let(:rank) {"Ace"}
  let(:suite) {"Spade"}
  let(:card){ Card.new(rank, suite) }
  context "testing card" do
    it 'has a rank' do
      expect(card.rank).to eq('Ace')
    end

    it 'has a suite' do
      expect(card.suite).to eq('Spade')
    end

    it 'has a custom error message' do
      comparison = 'Spades'
      expect(card.suite).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suite} instead!"
    end
  end
end
