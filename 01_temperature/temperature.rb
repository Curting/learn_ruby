#write your code here

# Fahrenheit to Celsius.
# 1 degree fahrenheit = 5/9 degree celsius
# Use floats

def ftoc(fahrenheit)
	(fahrenheit - 32) * 5/9.to_f
end

def ctof(celsius)
	celsius * 9/5.to_f + 32
end