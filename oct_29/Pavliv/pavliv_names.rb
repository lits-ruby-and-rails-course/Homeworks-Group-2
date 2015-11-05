def unique_names
	a = "Maryan"
	names = (0..14).to_a.map { |n| b = a = a.next }
	groups = names.each_slice(5).to_a
	render text: groups
end