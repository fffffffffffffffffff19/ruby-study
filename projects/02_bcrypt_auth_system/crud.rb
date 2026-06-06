require 'bundler/setup'
require "bcrypt"
# This module will be responsible for the encryption and verification of the passwords using the bcrypt gem
module Crud
    # Create a new incrypted password from the password provided by the user
    def self.bcrypt_password(password) 
        BCrypt::Password.create(password)
    end
    # Verify if the password provided by the user matches the incrypted password stored in the "database"
    def self.bcrypt_password_verify(password, password_to_compare)
        return true if BCrypt::Password.new(password) == password_to_compare
        false
    end
end