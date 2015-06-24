# https://www.interviewcake.com/question/stock-price

stock_prices_yesterday = [7, 9, 6, 2, 10, 3, 8]

def max_profit(a)
	min_price = a[0]
	profit = a[1] - a[0]
	
	a.drop(1).each do |e|
		profit = [profit, e - min_price].max
		min_price = [min_price, e].min
	end
	
	profit
end

puts max_profit(stock_prices_yesterday)