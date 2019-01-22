require 'rails_helper'
require './spec/support/mocks/mocked_nokogiri_response.rb'

RSpec.describe "GetCharacters", type: :request do
  before(:each) do
    mocked_nogokiri_response = MockedNokogiriResponse

    allow(NokogiriWrapper).to receive(:open_url).and_return(mocked_nogokiri_response)
  end

  describe "GET /characters" do
    it "works! (now write some real specs)" do
      get characters_path
      expect(response).to have_http_status(200)
    end

    it 'returns all characters' do
      characters = [{
        name: 'Pikachu',
        franchise: 'Pokemon'
      }].to_json

      get characters_path
      expect(response.body).to eq(characters)
    end
  end
end
