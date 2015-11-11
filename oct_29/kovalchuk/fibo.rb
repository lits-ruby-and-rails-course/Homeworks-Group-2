


def fib (n)
#	return n if n <2 
	x = 0 # n-2
	y = 1 # n-1

	for i in 2..n
		x, y = y, x+y
	end
	p y
	return y
end

print "Count Fibonacci N-step number for: "
number = gets.chomp.to_i
fib(number)		
