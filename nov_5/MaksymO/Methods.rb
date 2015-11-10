#  untitled.rb
#  
#  Copyright 2015 maxim <maxim@maxim-pc>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  

require 'ipaddr'

class StdClass
	def initialize
		p "Initialize"
	end
	
	def location_in_hierarchy(object, method)
		p object.class().ancestors.reverse		
		
	    object.class().ancestors.reverse.each do |ancestor| 
         p "Methods that are specific only for [#{ancestor.name}] class:" 
         p ancestor.methods(false)
         
         if (ancestor.methods(false).include?(method)) 
           return true
         end
       end
       
     return false
  end		

	def get_uniq_methods obj1, obj2
	  methods1 = obj1.class.methods
	  methods2 = obj2.class.methods
	  
	  p "[#{obj1.class.name}] class methods: " + methods1.to_s()
	  p "[#{obj2.class.name}] class methods: " + methods2.to_s()
	  
	  return methods1 - methods2 |  methods2 - methods1
	end
		
end

x = StdClass.new
p "Is :format present in #{x.class.name} class or one of his subclasses? - " + 
  x.location_in_hierarchy(x.class, :format).to_s().upcase
  
  obj1 = String.new
  obj2 = IPAddr.new
  
p "Diff between String methods and IPAddr methods: " + 
  x.get_uniq_methods(obj1, obj2).to_s
