  # In this task you should use #prepend and #include methods
  # in different combinations to achieve desired result, described at the bottom
  # Hint: class method #ancestors should help you to understand ancestors chain in different cases
  # Good Luck!
  
  module A
    def hello
      super if defined?(super)
      puts "hello from A"
    end
  end

  module B
    def hello
      super if defined?(super)
      puts "hello from B"
    end
  end

class C
  #=> ABC
  include A
  include B

  #=> ACB
  #prepend B
  #include A
    
  #=> BAC
  #include B
  #include A

  #=> CAB
  #prepend A
  #prepend B
    
  #=> CBA
  #prepend B
  #prepend A
        
  def hello
    super if defined?(super)
    puts "hello from C"
  end    
end

c = C.new
#puts C.ancestors

c.hello 
# should be called in order => A,B,C
# should be called in order => A,C,B
# should be called in order => B,A,C
# should be called in order => C,A,B
# should be called in order => C,B,A
