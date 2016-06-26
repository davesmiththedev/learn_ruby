#Basic tests
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

#Bonus tests
def multiply numbers
	result = 0
	numbers.each do |x|
		if result == 0
			result += x
		else
			result *= x
		end
	end
	result
end

def power first_number, second_number
	result = 0 
	(second_number-1).times do
		result = result + (first_number * first_number)
	end
	result
end

def factorial
	
end

