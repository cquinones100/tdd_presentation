class NokogiriWrapper
  def self.open_url(url)
    Nokogiri::HTML(open(url))
  end
end
