require "bloc_record/base"
require_relative "book"

class Library < BlocRecord::Base
  has_many :books
  #
  # def init(lib_name)
  #   Library.create(name: lib_name)
  # end

  def add_entry(name)
    Library.create(name: name)
  end

  def self.find_position(name)
    Library.all.each_with_index do |lib,idx|
      if name == lib.name
        return idx
      end
    end
  end


  def self.update_name(name)
         @name = name
  end
end
