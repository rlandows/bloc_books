require_relative '../models/book'
require_relative '../models/library'
require 'bloc_record'

BlocRecord.connect_to("database/database.sqlite", :sqlite3)

lib = Library.create(
  name: "Rob Library"
)

Book.create(
  library_id: lib.id,
  name: "The Well-Grounded Rubyist",
  author: "David A. Black",
  pages: 520
)

Book.create(
  library_id: lib.id,
  name: 'Practical Object-Oriented Design in Ruby',
  author: 'Sandi Metz',
  pages: 272
)

Book.create(
  library_id: lib.id,
  name: 'Eloquent Ruby',
  author: 'Russ Olsen',
  pages: 448
)
