#simple use while
def fibonacciCycle(n)
    return "ERROR: fibonacci is not count for negative numbers " if n < 0
    return a if n == 0
    #a,b=0,1 ??
    a = 0
    b = 1
    buf = 1
    
    for i in 1..n
        # a, b=b, a+b ??
        buf = b  
        b += a
        a = buf
    end
    b
end
#we can use some algorithms or matrix method it will be faster

#tail recursion??? 
def fibonacciTailRecursion(n)
    return "ERROR: fibonacci is not count for negative numbers " if n < 0
    return n if n < 2

    return fibonacciTailRecursion(n-1) + fibonacciTailRecursion(n-2)
end

#linear recursion
def fibonacciLinearRecursion(a=0, b=1, n)
    return "ERROR: fibonacci is not count for negative numbers " if n < 0
    return a if n == 0

    return fibonacciLinearRecursion(b, a + b, n - 1)
end

#recursion of remembering
$FIB_ARRAY = [0,1]
def fibonacciRR(n)
  return n if $FIB_ARRAY.include? n
  ($FIB_ARRAY[n-1] ||= fibonacciRR(n-1)) + ($FIB_ARRAY[n-2] ||= fibonacciRR(n-2))
end

puts "use tail recursion??? 40 el = #{fibonacciTailRecursion(35)}"
puts "use recursion of remembering 5_000 el = #{fibonacciRR(5_000)}"
puts "use linear recursion 8_000 el = #{ fibonacciLinearRecursion(8_000) }"

puts "use cycle 50_000 el =  #{fibonacciCycle(50_000)}"
