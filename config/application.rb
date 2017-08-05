require "bloc_works"


$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")
$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "models")

BlocRecord.connect_to("app/database/database.sqlite", :sqlite3)

module BlocBooks
  class Application < BlocWorks::Application
  end
end
