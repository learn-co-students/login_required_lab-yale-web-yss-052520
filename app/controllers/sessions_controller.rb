class SessionsController < ApplicationController

    def new()
    end

    def create()
        if !params[:name] || params[:name] == ""
            redirect_to new_path
        else 
            session[:name] = params[:name]
        end
    end

    def destroy()
        session.delete(:name)
    end
end
