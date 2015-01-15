class LanguageController < ApplicationController
   def index
   	@hello_controller = t(:hello_yml)
   end
   
 # def
 #   translations
 # end

  def info_letter
    @hello_controller = t(:hello_yml)
  end
end
