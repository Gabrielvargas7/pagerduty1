class HomeController < ApplicationController


  def welcome

    respond_to do |format|
      format.html
    end

  end

end
