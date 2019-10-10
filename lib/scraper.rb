require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    
    html = open(index_url)
    
    doc = Nokogiri::HTML(html)
    
    #students: doc.css("div.student-card")
    #name: doc.css("h4.student-name").text
    #location: doc.css("p.student-location").text
    #profile_url: doc.css("a").attribute("href").value
    
    students = []
    
    doc.css("div.student-card").each do |student|
      student_info = {}
      student_info[:name] = student.css("h4.student-name").text
      student_info[:location] = student.css("p.student-location").text
      #binding.pry
      student_info[:profile_url] = student.css("a").attribute("href").value
      students << student_info
    end
    students
  end
  
  # twitter: doc.css("div.social-icon-container a").attribute("href")
  # linkedin: 
  # github: 
  # blog: 
  # profile_quote: 
  # bio: 

  def self.scrape_profile_page(profile_url)
    
    html = open(profile_url)
    
    doc = Nokogiri::HTML(html)
    
    profile_pages = {}
    
    
    
  end

end

