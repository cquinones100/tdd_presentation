class MockedNokogiriResponse
  class MockedSearchResponse
    def text
      "\nPikachu\n\n\n\n\n\n\n\n\nPokemon\n"
    end
  end

  def self.search(arg)
    if arg == 'table'
      [MockedNokogiriResponse]
    else
      [MockedSearchResponse.new, MockedSearchResponse.new]
    end
  end
end
