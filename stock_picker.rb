def create_stock()
	stock_prices = []
	for day in (1..30)
		stock_prices << Random.rand(1..20)
	end
	return stock_prices
end

def stock_picker()
	stock = create_stock()
	print "#{stock}"
	sorted_stock = stock.sort
	starting_min_index = 0
	starting_max_index = -1
	min_value = sorted_stock[starting_min_index]
	max_value = sorted_stock[starting_max_index]
	buy_sell = []

	if stock.index(min_value) > stock.rindex(max_value)	
		until stock.index(min_value) < stock.rindex(max_value) do
			# puts "working..."
			# puts "MIN INDEX: #{stock.index(min_value)}"
			# puts "MAX INDEX: #{stock.rindex(max_value)}"
			# puts "MIN VALUE: #{min_value}"
			# puts "MAX VALUE: #{max_value}"
			min_value += 1
			max_value -= 1
			until sorted_stock.index(min_value) != nil do 
				min_value += 1
			end
			until sorted_stock.index(max_value) != nil do
				max_value -= 1
			end
			# puts "MIN INDEX: #{stock.index(min_value)}"
			# puts "MAX INDEX: #{stock.rindex(max_value)}"
			# puts "MIN VALUE: #{min_value}"
			# puts "MAX VALUE: #{max_value}"
		end
	end

	if stock.index(min_value) < stock.rindex(max_value)
		buy_sell << stock.index(min_value)
		buy_sell << stock.rindex(max_value)
		puts "#{buy_sell}"
	end

	puts "Based on random values you should Buy stock on the #{buy_sell[0] + 1} of the month and sell on the #{buy_sell[1] + 1}"
end
puts "random stock values for the month"
stock_picker()