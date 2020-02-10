class WelcomeController < ApplicationController

  def show_welcome
    puts params[:first_name]
  end
end
