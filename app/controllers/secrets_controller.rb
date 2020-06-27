class SecretsController < ApplicationController
    before_action :check  

    def show 
        @username = current_user 
    end 

    def secret 
    end 

    private 
    
    def check
        return redirect_to '/login' unless session.include? :name  
    end 

end 