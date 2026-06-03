users = [
    { username: "Deveras", password: "12345" },
    { username: "Schiavon", password: "54321" },
    { username: "Gabe", password: "15243" },
]

puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

exitWhile = 0

while true
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp

    user = users.find{ |accounts| accounts[:username].eql?(username) && accounts[:password].eql?(password) }

    if user != nil
        puts
        p user
        break
    end

    exitWhile += 1

    if exitWhile == 3
        puts "You have exceeded the number of attempts"
        break
    end

    puts "Username or password not match, try again."
    puts "Press n to quit or any other key to continue"
    n = gets.chomp

    break if n.to_s.downcase == "n"
end