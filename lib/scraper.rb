require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
 

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    doc.css(".roster-cards-container").each do |card|
      card.css(".student-card a")
     binding.pry
 
    end
   end
     
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

