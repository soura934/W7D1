class SessionsController < ApllicationsController
    def new
        # Render a form for the user to input their username and password.
        render :new
    end

    def create 
        debugger
        # Verify the user_name/password
        # Reset the User's session_token
        # Update the session hash with the new session_token
        # Redirect the user to the cats index page
        user = User.find_by_credentials(params[:user][:user_name], params[:user][:password])
        if user
            new_session_token = user.reset_session_token!
            session[:session_token] = new_session_token
            redirect_to cats_url
            # put an else when user's info is wrong
        end
    end
    

end
