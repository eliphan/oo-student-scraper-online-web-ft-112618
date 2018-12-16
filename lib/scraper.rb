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
    
    links = doc.css(".social-icon-container a").map {|link| link.attribute("href").value}
    binding.pry
    links.map do |link|
      if link.include?("linkedin")
        profile[:linkedin] = link
      if link.include?("github")
        profile[:github] = link
      if link.include?("blog")
        profile[:blog] = link
      end    
      
 
  end




 end 
 
 
end

