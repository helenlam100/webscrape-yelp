require 'nokogiri'
require 'rubygems'
require 'open-uri'

class Review

  attr_accessor :content

  def initialize(content)
    @content = content.css('ul.reviews').css('li')[0]
    @date = @content.css('meta[itemprop="datePublished"]').attr("content").text
    @stars = @content.css('meta[itemprop="ratingValue"]').attr("content").text
    @text_only_review = @content.css('p[itemprop="description"]').text
    @username = @content.css('div.media-story a').text
    @raw_html_review = @content.to_html
    @html = @content.to_html
  end

  def date
    @date
  end

  def stars
    @stars
  end

  def username
    @username
  end

  def text_only_review
    @text_only_review
  end

  def raw_html_review
    @raw_html_review
  end

end
