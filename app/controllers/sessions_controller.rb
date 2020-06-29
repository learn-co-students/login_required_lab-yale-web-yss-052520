class SessionsController < ApplicationController
    
    def homepage
        # current_user ? redirect_to '/doggos' : redirect_to '/login' 
        if current_user
            redirect_to '/doggos'
        else
            redirect_to '/login'
        end
    end
    
    def new
    end
    
    def create
        name = params[:name]
        if !name || name.empty?
            redirect_to '/login'
        else
            session[:name] = name
        end
    end
    
    def destroy
        session.delete :name if current_user
    end
end