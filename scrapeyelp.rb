require 'nokogiri'
require 'rubygems'
require 'rest-client'
require './lib/yelp_class'

require 'open-uri'

page = Nokogiri::HTML(open("fatangel.html"))

first_review = Review.new(page)

# p first_review.raw_html_review
p first_review.date
p first_review.stars
p first_review.username
p first_review.text_only_review
 # p page.css

 # first = page.css('ul.reviews').css('li')[0].to_html
 #
 # p first
 #
 # date = page.css('ul.reviews').css()

 # text_review =  page.css('li')[0]
 #
 # p text_review

 #turns each HTML structure and turns into an object

 # p first.to_html

 #gives you raw HTML

 # p page.css
