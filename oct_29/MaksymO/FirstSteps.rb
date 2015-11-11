first = 0
second = 1
fibonacciNum = 500000

for i in 3..fibonacciNum
   temp = first
   first = second
   second = first + temp
end

p "Wow! #{fibonacciNum} element of Fibonacci sequesnce is #{second}"



array = [ ['Student#1', 'Studen#2', 'Studen#3'] ,
          ['Student#1', 'Studen#2', 'Studen#3'],
          ['Student#1', 'Studen#2', 'Studen#3']]
          
array.each_with_index{|item, index|
    p "Group \# #{index + 1}"
    item.each_with_index{|item1, index1|
        p "\# #{index1 + 1}:#{item1}"
    }
}

