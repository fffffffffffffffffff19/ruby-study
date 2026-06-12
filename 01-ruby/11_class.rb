# Definition of Object-oriented programming
# -------------------------------------------
# Object-oriented programming (OOP) is a programming paradigm that
# uses objects and their interactions to design and program applications
#
# University
# ------------
# Student
# -- students - first name, last name, email, student id
# Course
# -- courses - course name, course description, course id

# Bookstore
# -----------
# Book
# -- books - ISBN, name, description
# Employee
# -- employees - SSN, first name, last name, email, employee id

class Student
    attr_accessor :first_name, :last_name, :email, :username

    def initialize(first_name, last_name, email, username, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @username = username
        @password = password
    end

    def to_s
        "First name: #{@first_name}, Last name: #{@last_name}"
    end
end

deveras = Student.new("Deveras", "Schiavon", "deveras@schiavon", "deveras schiavon", "12345")
gabe = Student.new("Gabe", "Linda", "gabe@linda", "gabe linda", "54321")

puts deveras
puts gabe
deveras.last_name = gabe.last_name
puts "deveras is altered"
puts deveras