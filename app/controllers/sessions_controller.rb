class SessionsController < ApplicationController

    def current_user

    end


    def new


    end

    def create
        # byebug
        if params[:name].nil? || params[:name] == ''
            redirect_to '/login'
        else 
            session[:name] = params[:name]
            redirect_to '/welcome'
        end
    end
    
    def welcome

    end
    
    def destroy
        session.delete :name
        redirect_to '/login'

    end
end