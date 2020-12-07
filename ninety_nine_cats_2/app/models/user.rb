class User < ApplicationRecord
    validates :session_token, uniqueness: true
    validates :user_name, presence: true, uniqueness: true
    validates :password, length: {minimum: 6}, allow_nil: true


    def self.find_by_credentialso(user_name, password)

    end

    def reset_session_token!

    end

    def password=(password)

    end

    def is_password?(password)

    end


end