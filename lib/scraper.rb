require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
 

  def self.scrape_index_page(index_url)
     doc = Nokogiri::HTML(open("http://159.89.134.39:47526/fixtures/student-site/"))
     name = doc.search("h4#student-name").text
     name.each do |student|
       puts student.css("h4").text
     end
     
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

