class SessionsController < ApplicationController
    
    before_action :current_user
    
    def new
    end

    def create
        if (!params.include? :name) || params[:name].blank?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
    end
end
