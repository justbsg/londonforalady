require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do

# 1.upto(6) do |pagenum|
#   # Create a local variable named `url`
#   url = "http://www.groupon.co.uk/browse/london?category=food-and-drink&page=#{pagenum}"

#   #http://www.groupon.co.uk/browse/london?category=food-and-drink&page=1

#   # Print it
#   #puts url

#   # Print this URL
#   data = Nokogiri::HTML(open(url))
#   @restaurants = data.css('.deal-card.deal-list-tile.deal-tile-standard')

# #Food deal
#   #food.at_css('.deal-title.should-truncate').text

# end
# 1.upto(20) do |pagenum|
       # url = "http://www.ncrowd.co.uk/london/deals?order=popularity&limit=99&direction=desc&page=#{pagenum}" 
        #data = Nokogiri::HTML(open(url))
       # puts url

erb :index
end

get '/ncrowd' do
erb :ncrowd
end

get '/groupon' do
erb :groupon
end

get '/alldeals' do
erb :alldeals
end

get '/dealzippy' do
erb :dealzippy
end