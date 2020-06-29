class SecretsController < ApplicationController
  
    before_action :current_user
 
  def new
  end

  def show
    if session[:name]
      render 'show'
    else
      redirect_to login_path
    end
  end


end
