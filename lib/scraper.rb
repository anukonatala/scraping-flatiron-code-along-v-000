require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
<<<<<<< HEAD

  def make_courses
    self.get_courses.each do |post|
       course = Course.new
     course.title = post.css('h2').text
     course.schedule = post.css('.date').text
     course.description = post.css("p").text
    end
  end

  def get_page
 #  html = open('http://learn-co-curriculum.github.io/site-for-scraping/courses')
  # Nokogiri::HTML(html)
  # doc = Nokogiri::HTML(html)
   Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
   
  end
  def get_courses
    self.get_page.css(".post")
=======

  def make_courses

  end

  def get_page
   html = open('http://learn-co-curriculum.github.io/site-for-scraping/courses')
   Nokogiri::HTML(html)
   doc = Nokogiri::HTML(html)

  end
  def get_courses

>>>>>>> a679c673b6914358b2436affd3d3c5b103e055a8
  end
	
  
end
