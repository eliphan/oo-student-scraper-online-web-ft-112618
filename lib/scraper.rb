require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
 

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = []
    doc.css(".roster-cards-container").each do |card|
      card.css(".student-card a").each do |student|
        student_name = student.css(".student-name").text
        student_location = student.css(".student-location").text
        student_url = student.attr("href")
        students << {:name => student_name, :location => student_location, :profile_url => student_url}
    end
   end
      students
  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    profile = {}
    
    links = doc.css(".social-icon-container").children.css("a").map do |link|
      link.attribute("href").value
      
    if links.include?("linkedin")
      :linkedin => link.attribute("href").value
    if links.include?("github")
      :github => link.attribute("href").value
    if links.include?("blog")
      :blog => link.attribute("href").value
  
  end
end
end

 end 
end

