class User < ApplicationRecord
    validates :session_token, uniqueness: true
    validates :user_name, presence: true, uniqueness: true
    validates :password, length: {minimum: 6}, allow_nil: true

    after_initialize :ensure_session_token


    def self.find_by_credentials(user_name, password)
        # returns the user with the given name if the password is correct
        user = User.find_by(user_name: user_name)    # user_name: 'inputted username' --> gives the record that matches

    end
    
    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.update(session_token: self.class.generate_session_token)
    end

    def password=(password)
        # sets out password
        password = password
        BCrypt::Password.create(password)
    end

    def is_password?(password)
        # method that verifies a password
        
    end

    private
    attr_reader :password
    def ensure_session_token
        # gives session token if nil else gives session token
    end


end

# F: self.find_by_credentials (class method) --
# I: is_password? --
# G: self.generate_session_token (class method) -done-
# V: validations, after_initialize --
# A: attr_reader :password  --
# P: password= --
# E: ensure_session_token --
# R: reset_session_token! -done-