#write your code here

def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	result = 0
	array.each { |num| result += num }
	result
end

def multiply(array)
	result = 1
	array.each { |num| result *= num }
	result
end

def power(x, y)
	x ** y
end

def factorial(n)
	(1..n).inject(1, :*)
end