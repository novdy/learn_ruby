def add(num1, num2)
	return num1 + num2
end

def subtract(num1, num2)
	return num1 - num2
end

def sum(numbers)
	total = 0
	numbers.each do |num|
		total = add(total, num)
	end
	return total
end

# This function goes beyond the scope of the problem. Multiplies from arrays recursively
# Example: multiply([2,10,[78,[102,13]],5], 15, [12,4,6])
def multiply(*args)
	total = 1
	args.each do |num|
		if num.kind_of?(Array)
			if num.length == 0; return 0 end

			ar_total = num[0]			
			i = 1
			until i == num.length 
				ar_total = multiply(ar_total, num[i])	
				i = i + 1
			end
			num = ar_total
		end
		total = total * num
	end
	return total
end

def power(num, power)
	total = 1
	power.times do 
		total = total * num
	end
	return total
end	

def factorial(num)
	if num <= 0
		return 1
	else
		return num * factorial(num - 1)
	end
end
