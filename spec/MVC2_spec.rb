require_relative '../MVC2'
require 'webmock/rspec'
#
# the problem with the current state of this test is that it tests against
# the actual API, which can cause
# 1) if the the request was slow, the network test would take a while
# 2) too deep an integration with 3rd party api
# 3)
# need a way to save a snapsnot of the actual test data, in order to avoid the depedency on the Service
#Solution
#VCR / Snapshots

RSpec.describe MVC2 do
  describe '#show_all' do
    it 'should show a character' do
      response_body = [
        {
        "name": "Blackheart",
        "head_shot": "https://vignette.wikia.nocookie.net/marvelvscapcom/images/3/34/MVC2_Blackheart.jpg/revision/latest?cb=20110914071301",
        "universe": "Marvel"
        },
        {
        "name": "Cable",
        "head_shot": "https://vignette.wikia.nocookie.net/marvelvscapcom/images/b/be/MVC2_Cable.jpg/revision/latest?cb=20110914072054",
        "universe": "Marvel"
        },
        {
        "name": "Captain America",
        "head_shot": "https://vignette.wikia.nocookie.net/marvelvscapcom/images/2/21/MVC2_Captain_America.jpg/revision/latest?cb=20110914072107",
        "universe": "Marvel"
        },
        {
        "name": "Colossus",
        "head_shot": "https://vignette.wikia.nocookie.net/marvelvscapcom/images/3/31/MVC2_Colossus.jpg/revision/latest?cb=20110914072123",
        "universe": "Marvel"
        }
      ]
      response = WebMock
        .stub_request(:get, "https://secure-hamlet-19722.herokuapp.com/api/v1/characters")
        .to_return(status: 200, body: response_body.to_json)
        #binding.pry
      expect(subject.show_all).to eq(response_body)
      expect(response)
    end
  end

  describe '#show_a_character' do
    it 'should show a character' do
      response = subject.show_a_character("Akuma")

      expect(response.first["name"]).to eq("Akuma")
    end
  end
end
