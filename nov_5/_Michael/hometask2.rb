#For example create classes
class A
  def meth1; p "m1"; end;
  def meth2; p "m2"; end;
  def meth3; p "m3"; end;
end

class B
  def meth1; p "m1"; end;
  def meth2; p "m2"; end;
  def meth7; p "m3"; end;
end


a = A.new
b = B.new


def get_uniq_methods(obj1, obj2)
  methods = obj1.methods - obj2.methods
  methods << obj2.methods - obj1.methods
  p "Unique methods -  #{methods}"
end

get_uniq_methods(a,b)


#--------


def location_in_hierarchy(obj, meth)
  klass = obj.class
  while(klass.instance_methods(true).include? meth.to_sym)
    res = "meth here #{klass}"
    klass = klass.superclass
  end
  res
end

puts loc(a, "meth1")



