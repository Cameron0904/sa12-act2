require 'httparty'

response = HTTParty.get('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd')
crypto = JSON.parse(response.body)
s_crypto = crypto.sort_by { |crypto| -crypto['market_cap'] }

puts "Top 5:\n"
s_crypto.first(5).each_with_index do |crypto, index|
    name = crypto['name']
    price = crypto['current_price']
    market_cap = crypto['market_cap']
    puts "##{index + 1}: #{name}\n  Price: $#{price}\n  Market Cap: $#{market_cap}\n"

end
