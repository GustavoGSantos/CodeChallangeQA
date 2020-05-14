#Setting to require all files in directory pages and files name finish in Page.rb
Dir[File.join(File.dirname(__FILE__),"../pages/*Page.rb")].each{|file| require file}

#Configuring a module and methods to instantiate global variables
module Pages
  def login
      @login ||= Login.new
  end
  
  def home
    @home ||= Home.new
  end
end