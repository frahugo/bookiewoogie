class AuthorsController < ApplicationController

  def show
    @author = AuthorDecorator.find params[:id]
  end

end
