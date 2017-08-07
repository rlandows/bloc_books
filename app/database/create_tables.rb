require 'sqlite3'

 db = SQLite3::Database.new("database/database.sqlite")
 db.execute("DROP TABLE library;");
 db.execute("DROP TABLE book;");

 db.execute <<-SQL
     CREATE TABLE library (
       id INTEGER PRIMARY KEY,
       name VARCHAR(30)
     );
   SQL

 db.execute <<-SQL
     CREATE TABLE book (
       id INTEGER PRIMARY KEY,
       library_id INTEGER,
       name VARCHAR(30),
       author VARCHAR(30),
       pages INTEGER,
       FOREIGN KEY (library_id) REFERENCES library(id)
     );
   SQL
