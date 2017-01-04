# Modulus (%) divides two numbers and returns the remainder.

def fizzBuzz (num)
	if num % 3 == 0 && num % 5 == 0
	puts "Fizz Buzz"
	end
	if num % 3 == 0
	puts "Fizz"
	end
	if num % 5 == 0
	puts "Buzz"
	end
	if num % 3 != 0 && num % 5 != 0
	puts num
end
end

fizzBuzz(1..100)