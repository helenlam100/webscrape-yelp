# webscrape-yelp
Using 'nokogiri' we scrape yelp to practice some webscraping!


Parsing

We will be working with the following Yelp page: <http://www.yelp.com/biz/fat-angel-san-francisco>. Our goal will be to count the number of 5 star reviews Fat Angel has gotten.

First things first, we need to get this HTML file into a Nokogiri object to parse. Using Ruby's file I/O capabilities, read in the file as a single string of HTML.

Make a Nokogiri HTML document with this string of HTML.

Now that we have our HTML file as a Nokogiri HTML object, we can begin to have some fun! This will be easiest to do interactively in an irb or Pry shell.

Using CSS selectors in Nokogiri write a function to extract the first review (everything contained within the <li>). HINT: Use the Chrome Web inspector to find out how to navigate and extract the review

Now that we have extracted one review, we can structure the information contained within. Create a Review class to store the:

-Date of review
-Number of Stars
-User name of user who left review
-Text content of Review
-The original raw string of HTML corresponding to the review
