# RELEASE 1

def week_days
	puts "Today is Friday!"
	yield("Thursday", "Wednesday", "Tuesday")
end

week_days { |day1, day2, day3| puts "The last three days were: #{day1}, #{day2}, and #{day3}!" }