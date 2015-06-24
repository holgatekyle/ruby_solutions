#https://www.interviewcake.com/question/highest-product-of-3

array = [-10,-10,1,3,2]

def max_product(a)
	highest = [a[0], a[1]].max
	lowest = [a[0], a[1]].min
	
	highest_two = a[0] * a[1]
	lowest_two = a[0] * a[1]
	
	highest_three = 0
	
	a.drop(2).each do |x|
	
		highest_three = [highest_three, highest_two * x, lowest_two * x].max
		
		highest_two = [highest_two, highest * x].max
		lowest_two = [lowest_two, lowest * x].min
		
		highest = [highest, x].max
		lowest = [lowest, x].min
	
	end
	
	highest_three
	
end

puts max_product(array)