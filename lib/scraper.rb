require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    
    html = open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
    
    doc = Nokogiri::HTML(html)
    
    #name: doc.css("h4.student-name").text
    #location: doc.css("p.student-location").text
    #profile_url: doc.css(".student-card a").attribute("href").value
    
    binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

