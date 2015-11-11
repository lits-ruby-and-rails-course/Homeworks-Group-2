class Cl1
     def meth1;  p "1";   end
end
class Cl2 < Cl1
     def meth2;  p "2";   end
end
class Cl3
     def meth3; p "3"; end
end  

def location_in_hierarchy (obj, meth_name)    
    cl = obj.class
    return "\e[33mError: given object doesn't have given methods\e[0m" 
    unless cl.instance_methods(true).include? meth_name.to_sym
    while cl.instance_methods(true).include? meth_name.to_sym
       res = "\e[32mHere)) => #{cl}\e[0m"
       cl = cl.superclass
    end
    res
end

def get_uniq_methods(obj1, obj2)
    m_arr1 = obj1.methods
    m_arr2 = obj2.methods
    return "\e[33mObjects doesn't have unique methods\e[0m" if m_arr1 == m_arr2
    ["Unique methods:"] + ((m_arr1 - m_arr2) + (m_arr2 - m_arr1)) 
end

#puts location_in_hierarchy(Cl2.new, "nil?")
#puts get_uniq_methods(Cl3.new, Cl2.new)
