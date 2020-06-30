class SecretsController < ApplicationController
  before_action :require_login

  def show
    # if session[:name].nil?
    #   redirect_to login_path
    # elsif session[:name].empty?
    #   redirect_to login_path
    # end
  end

  private

  def require_login
    redirect_to root_path unless session.include? :name
  end

end