class SessionsController < ApplicationController
    def create
     user = User.find_by(username: params[:username])
     session[:user_id] = user.id
     render json: user
    end

    def destroy 
        session.delete :user_id
    
    end
end


# - Find a user in the database using the username from `params`
#   - Save the user's ID to the session hash
#   - Return the user as a JSON object