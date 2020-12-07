class SessionsController < ApllicationsController
    def new
        # Render a form for the user to input their username and password.
        render :new
    end

    def create 
        # Verify the user_name/password
        # Reset the User's session_token
        # Update the session hash with the new session_token
        # Redirect the user to the cats index page
    end
    

end
