class HistoriesController < ApplicationController

    before_action :require_login

    def require_login
        @user = User.find_by(id: session[:user_id])
        if @user.blank?
            redirect_to root_url, notice: "You need to login first."
        end
    end


    def index
        @histories = Donation.where(user_id: @user.id)
    end 
end