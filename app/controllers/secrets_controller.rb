class SecretsController < ApplicationController
    # before_action :check  

    def show 
        unless session.include? :name 
            redirect_to '/login' 
        end 
        @username = current_user 
    end 

    # private 
    
    # def check
    #     return head(:forbidden) unless session.include? :user  
    # end 

end 