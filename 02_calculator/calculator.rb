def add first_number, second_number
	result = first_number + second_number
end

def subtract first_number, second_number
	result = first_number - second_number
end

def sum numbers
	result = 0
	numbers.each do |x|
		result += x
	end
	result
end