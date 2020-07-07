class SecretsController < ApplicationController 
    before_action :check

    def show 
    end 

    def check
        redirect_to "/new" if session[:name].nil?
    end 
end 