def add(a,b)
	result = a + b
end
def subtract(a,b)
	result = a - b
end
def sum(array)
	result = 0
	max = array.length
	if array.length != 0
		array.each do |x|
			result += x
		end
	end
	return result
end
def multiply(array)
	result = 1
	max = array.length
	if array.length != 0
		array.each do |x|
			result *= x
		end
	end
	return result
end
def power(a,b)
	result = 1
	b.times do
		result *=  a
	end
	return result
end
def factorial(a)
	result = 1
	if a == 0
		return 1
	else
		for x in 1..a
			result *= x
		end
		return result
	end
end