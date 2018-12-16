require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  doc = Nokogiri::HTML(open(url))

  def self.scrape_index_page(index_url)
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

