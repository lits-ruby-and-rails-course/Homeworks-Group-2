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
# should be called in order => A,C,B
    include A
    prepend B   

# should be called in order => A,B,C
#    include B, A

# should be called in order => B,A,C
#    include A, B

# should be called in order => C,B,A
#    prepend A, B 

# should be called in order => C,A,B
#    prepend B, A          

    def hello
      super if defined?(super)
      puts "hello from C"
    end
  end

c = C.new
c.hello 

#puts C.ancestors

