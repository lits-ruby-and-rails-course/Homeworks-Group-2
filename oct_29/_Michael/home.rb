	def out_names(arr)
		arr = arr.each_slice(5).to_a
		arr.each_with_index do |name, index|
			puts "Group#{index + 1}: #{name}"
			puts "----"
		end
	end
        array = ["Hulk", "Spiderman", "Batman", "Captain America", "Frodo",
	            "Bruce Willis", "Jackie Chan", "Johny Deep", "Al pacino",
	            "Homer Simpson", "Peter Griffin", "Bart Simpson", "Lisa Simpson", "Marge Simpson"]

	out_names(array)

    
    


    def five_names(name)
    	5.times { p "#{name.next!}" }
    end


    five_names("Michael")