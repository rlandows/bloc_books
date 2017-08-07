require 'pry'
class BooksController < BlocWorks::Controller
   def welcome
     render :welcome, book: "Eloquent Ruby"
   end

   def index
        render :index, books: Book.all
    end

    def show
      # start a REPL session
      binding.pry
      
      req = Rack::Request.new(@env)
      puts "Here are the #{req.params}"
      @name = req.params.key("show")
      index = Book.find_position(@name)
      @book = Book.all[index]
      render :show, book: @book
    end
 end
