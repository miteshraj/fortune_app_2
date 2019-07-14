require 'unirest'

system 'clear'
puts "Choose an option"
puts "[1] for random fortune"
puts "[2] Lotto numbers"
puts "[3] Page visit counter"
puts "[4] Beer on the wall"

user_option = gets.chomp 

if user_option == "1"
response = Unirest.get("http://localhost:3000/fortune_url")
random_fortune = response.body
puts random_fortune
elsif user_option == "2"
	response = Unirest.get("http://localhost:3000/lotto_url")
	random_lotto = response.body
	puts random_lotto
elsif user_option == "3"
	response = Unirest.get("http://localhost:3000/count_url")
	page_count = response.body["visit_count"]
	puts "The number of visits is #{page_count}"
elsif user_option == "4"
	response = Unirest.get("http://localhost:3000/beer_url")
	beer_count = response.body
	puts beer_count
end