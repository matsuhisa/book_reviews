class WelcomeController < ApplicationController

  def index(page=nil)
    @books = Book.page(page)
  end

end
