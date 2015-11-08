#students = Array.new

def generate(n)
	names = Array.new(n, "irene")
    for i in 1...n
	    names[i]=names[i-1].next
    end
    return names
end

def divide_groups (arr_to_div)
	divided = Array.new
    divided = arr_to_div.each_slice(5).to_a

	for i in 0...divided.length
		p "Group ##{i+1}"
		divided[i].each do |j|
			p "#{j}"    	 
    	end
    end

	return divided
end

students = generate(15)

divide_groups(students)

