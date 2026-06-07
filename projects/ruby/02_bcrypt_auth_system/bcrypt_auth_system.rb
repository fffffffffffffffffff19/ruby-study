require_relative "crud"

class Secure_user
    include Crud
    attr_accessor :username, :password
    # This is a class variable that will store all the users created in the app, simulating a database
    @@all_users = []
    def initialize(username, password)
        @username = username
        @password = Crud.bcrypt_password(password)

        @@all_users.push(self)
    end

    def self.all_users
        @@all_users
    end
end
# This method will verify if the username and password provided by the user match any of the users stored in the "database"
def verify_user (usern, passw)
    Secure_user.all_users.find{ |user| user.username == usern && Crud.bcrypt_password_verify(user.password, passw) }
end
# Creating some users to test the app
Secure_user.new("Deveras", "12345")
Secure_user.new("Schiavon", "54321")
Secure_user.new("Gabe", "15243")
# The main loop of the app, where the user will be able to login or create a new user if the username and password provided don't match any of the users stored in the class
loop do
    # Get user inputs
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    # Verify credentials on "database"
    user = verify_user(username, password)
    # Conditional to check the result of the verification, true/false and a hability to cadastre new users
    if user == nil
        puts
        puts "Username or password dind't match"
        print "You want to add a new user? (Y/N): "
        y = gets.chomp.downcase

        if y != "y"
            puts
            puts "Press N to exit or anything to continue"
            n = gets.chomp.downcase

            if n == "n"
                break
            else
                next
            end
        end

        new_user = Secure_user.new(username, password)

        puts
        puts "New user cadastred on app: {username: #{new_user.username}, password: #{new_user.password}}"
    else
        puts
        puts "Welcome #{user.username}!"
        puts "Your password is #{user.password}"
    end
    # A way to exit the app if the user wants to
    puts
    puts "Press N to exit or anything to continue"
    n = gets.chomp.downcase
    break if n == "n"
end
