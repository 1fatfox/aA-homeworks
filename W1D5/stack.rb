class Stack
   def initialize
     @some_array = []
   end

   def push(el)
     some_array.push(el)
   end

   def pop
     some_array.pop
   end

   def peek
     some_array.last
   end
 end
