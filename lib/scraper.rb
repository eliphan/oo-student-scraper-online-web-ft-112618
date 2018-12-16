require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  doc = Nokogiri::HTML(open("http://159.89.134.39:47526/fixtures/student-site/"))

  def self.scrape_index_page(index_url)
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

