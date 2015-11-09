def nameGenerator
   result = ''
   for i in 0..(2 + rand(10))
      result += ('a'..'z').to_a.sample  #(('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a + ['-','_','.', ...])[rand(26*2+10)]
   end
   result[0] = result[0].upcase
   result
end

N = 15 #constants
STEP =  5

arr = Array.new(N){ nameGenerator } 
matrix = arr.each_slice(STEP).to_a

matrix.each_with_index{ |vals, index|  
   print " Group #{index + 1}: |"
   vals.each{ |val| print " #{val} |" }
   puts ""
}
