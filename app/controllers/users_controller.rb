class UsersController < ApplicationController
    def show 
        user = User.find_by(id: session[:user_id])
        if user 
            render json: user
        else 
            render json: {error:"Not Authorized"}, status: :unauthorized
        end
    end
end

# Make a `UsersController#show` method. It should:
# - Find a user in the database using the user id from the session hash
# - Return the user as a JSON object