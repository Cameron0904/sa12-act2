require 'httparty'

country = "Europe"
city = "London"

url = "http://worldtimeapi.org/api/timezone/#{country}/#{city}"

response = HTTParty.get(url)
data = response.parsed_response

c_dateT = data['datetime']

f_dateT = Time.parse(c_dateT).strftime("%Y-%m-%d %H:%M:%S")

puts "The current time in #{country}/#{city} is #{f_dateT}"



