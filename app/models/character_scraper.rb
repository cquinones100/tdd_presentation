class CharacterScraper
  WIKIPEDIA_URL = 'https://en.wikipedia.org/wiki/Characters_in_the_Super_Smash_Bros._series'.freeze

  def self.all_characters
    require 'open-uri'

    doc = NokogiriWrapper.open_url(WIKIPEDIA_URL)
    doc.search('table')[0].search('tr').map(&:text)[1..-1].map do |row|
      split_row = row.split("\n")

      name = split_row[1]
      franchise = split_row[-1]

      { name: name, franchise: franchise }
    end
  end
end
