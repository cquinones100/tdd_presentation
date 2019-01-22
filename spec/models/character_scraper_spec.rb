require './spec/support/mocks/mocked_nokogiri_response.rb'

RSpec.describe CharacterScraper do
  describe '.all_characters' do
    it 'should return all characters' do
      characters = [{
        name: 'Pikachu',
        franchise: 'Pokemon'
      }]

      mocked_nogokiri_response = MockedNokogiriResponse

      allow(NokogiriWrapper).to receive(:open_url).and_return(mocked_nogokiri_response)

      expect(CharacterScraper.all_characters).to eq(characters)
    end
  end
end
