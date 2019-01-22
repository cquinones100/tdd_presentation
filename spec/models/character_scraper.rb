require 'rails_helper'

RSpec.describe CharacterScraper do
  describe '.all_characters' do
    it 'returns all characters' do
      characters = [{
        name: 'Pikachu',
        franchise: 'Pokemon'
      }].to_json

      stub_const('Nokogiri::HTML', mock_nokogiri_response)

      expect(CharacterScraper.all_characters).to eq(characters)
    end
  end
end
