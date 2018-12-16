require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
 

  def self.scrape_index_page(index_url)
     doc = Nokogiri::HTML(open("http://159.89.134.39:47526/fixtures/student-site/"))
     name = doc.search("h4")
     
     
     
     
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

