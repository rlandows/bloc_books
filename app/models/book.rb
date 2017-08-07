require 'bloc_record/base'

 class Book < BlocRecord::Base
   def self.find_position(name)
     Book.all.each_with_index do |book,idx|
       if name == book.name
         return idx
       end
     end
   end
 end
