class SecretsController < ApplicationController 
    before_action :require_login 

    def show 
        # redirect_to "/new" if session[:name].nil? 
    end 

    def require_login
        # return head(:forbidden) unless session.include? :name
        redirect_to "/new" if session[:name].nil?
    end 
end 