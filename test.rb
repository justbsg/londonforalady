require 'nokogiri'
require 'open-uri'

url = "http://www.dealzippy.co.uk/london-deals/?user_pref[85]=0&user_pref[3]=0&user_pref[102]=0&user_pref[101]=0&user_pref[5]=0&user_pref[4]=0&user_pref[16]=0&user_pref[21]=0&user_pref[19]=0&user_pref[1]=0&user_pref[2]=0&user_pref[18]=0&user_pref[17]=0&user_pref[89]=0&city_id=1&sort=price&dir=ASC&keywords=&url=/&p=1" 
data = Nokogiri::HTML(open(url))
restaurants = data.css('.tile.group')

restaurants.each do |food|

description = food.at_css('.description')

if !description.nil?
	puts food.at_css('.description').text
	puts food.at_css('.price.group').text.delete! '£'

	image = food.at_css('footer').at_xpath('.//img')['alt']
	puts image

#food.at_css('footer img[alt]')
#puts food.at_css('.clsDealPrice').text.split(" ")[0]
end
end