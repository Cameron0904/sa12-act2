require 'httparty'

response = HTTParty.get("https://api.github.com/users/Cameron0904/repos")
repositories = JSON.parse(response.body)
max = repositories.sort_by {|repo| -repo['stargazers_count']}.first

puts "Name: #{max['name']}"
puts "Description: #{max['description']}"
puts "Stars: #{max['stargazers_count']}"
puts "URL: #{max['html_url']}"


