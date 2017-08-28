require 'pry'
class BooksController < BlocWorks::Controller
   def welcome
     render :welcome, book: "Eloquent Ruby"
   end

   def index
        render books: Book.all
    end

    # def show
    #   # start a REPL session
    #   # binding.pry
    #
    #   req = Rack::Request.new(@env)
    #   puts "Here are the #{req.params}"
    #   @name = req.params.key("show")
    #   index = Book.find_position(@name)
    #   @book = Book.all[index]
    #   render :show, book: @book
    # end

    def show
    if @routing_params["id"] != "show"
      book = Book.all[@routing_params["id"].to_i - 1]
      render book: book
    else
       req = Rack::Request.new(@env)
       book = Book.all[req.params['id'].to_i - 1]
       render  book: book
    end
   end
 end
