#https://www.interviewcake.com/question/find-unique-int-among-duplicates

array = [41, 40, 1, 1, 3, 3, 2, 2, 41]

def find_uniq_id(a)
	id = 0

	a.each do |x|
		id = id^x
	end

	id
end

puts find_uniq_id(array)