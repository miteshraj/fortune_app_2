class PagesController < ApplicationController
	def fortune_method
		fortunes = ["You will win the lottery", 
			"You will become a billionaire today", 
			"You will be hungry very soon, go eat",
			"You will catch a Legendary Pokemon in Pokemon Go"]
		render json: {fortune: fortunes.sample} 
	end

	def lucky_method 
		numbers = []
		6.times do 
			numbers << rand(1..60)
		end
		render json: {lucky_numbers: numbers}
	end

	def count
		count = 0
		count += 1
		render json: {visit_count: count.to_s + ", This proves that you cannot count the number of clicks due to a refreshes occuring that reset the counter"}
	end

	def beer_method
		i = 99
		song = []
		99.times do 
			song << "#{i} bottles of beer on the wall, #{i}
			bottles of beer. Take one down pass it around, 
			#{i-1} bottles of beer on the wall"
			i-=1
		end
		song << "No more botles of beer on the wall, no more
		beer on the wall. Go to the store, buy some more, 
		99 bottles of beer on the wall"
		render json: {song: song}
	end

	def meal_method
		meals = ["Grilled Cheese", "Penne Pasta", "Trader Joes Burritos",
		"Salad", "Vegan Cheese Pizza"]
		render json: {meal: meals.sample}
	end
end
 