class LibraryController < BlocWorks::Controller
   @@name = nil
   def index
     @lib = Library.all
     render :index , library: @lib
   end

   def new
     render :new
   end

   def edit
     req = Rack::Request.new(@env)
     puts "Here are the #{req.params}"
     @@name = req.params.key("edit")
     render :edit, name: @@name
   end

   def update
     @lib = Library.all
     req = Rack::Request.new(@env)
     name = req.params["name"]
    lib_to_update = Library.find_position(@@name)
    @lib[lib_to_update].update_attribute(:name, name)

     render :update
   end

   def destroy
     @lib = Library.all
     req = Rack::Request.new(@env)
     name = req.params["name"]
    lib_to_update = Library.find_position(@@name)
    @lib[lib_to_update].destroy

     render :destroy
   end

   def create
  req = Rack::Request.new(@env)
  @name = req.params["name"]
  Library.new.add_entry(@name)
  render :create
   end
 end
