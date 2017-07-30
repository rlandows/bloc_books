require "bloc_record/base"
require_relative "book"

class Library < BlocRecord::Base
  has_many :books

  def add_entry(title, author)
    Book.create(title: title, author: author)
  end
end
