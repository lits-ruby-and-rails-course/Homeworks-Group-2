def location_in_hierarchy (object, method)
  
  hierarchy = object.class.ancestors

  hierarchy.reverse.find do |a| 
    a.instance_methods.include?(method.to_sym)
  end

end
