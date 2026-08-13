# What are classes and objects?
# A class is a blueprint for creating objects. It difines what attributes,
# and behaviors objects of that type will have. An object is a specific instance of a class,
# It's created from the blueprint and has its own unique data.

# Think of it like a cookie cutter and cookies:
# The class is the cookie cutter (the blueprint)
# Each cookie is an object (an instance)

# In Ruby, everything is an object. Even numbers and nil are objects with their own classes (Integer and NilClass)

# Defining a Class
# To create a class in Ruby, use the class keyword followed by the class name in CamelCase:

class Person
  # This is where we'll define the class behavior
end

# Class names must start with a capital letter.
# By convention, multi-word class names use CamelCase
# like "BankAccount" or "ShoppingCart".

# Creating Objects

# Once you have a class, you can create objects (instances) using the ".new" method:

person1 = Person.new
person2 = Person.new

puts person1.class
puts person2.class

# Each call to "Person.new" creates a new, separate object.

# The initialize Method
# The "initialize" method is a special method that runs automatically when you call ".new".
# It's Ruby's equivalent of a constructor:

class Car
  def initialize
    puts 'A new Car!!'
  end
end

Car.new
# Output: A new person is born!!

# You'll typically use initialize to set up the object's initial state with instance variables.

# Instance Variables
# Instance variables store data that belongs to each individual object.
# They start with @ and are accessible throughout the class:

class Form
  def initialize(name, age)
    @name = name
    @age = age
  end
end

Form.new('Alice', 30)
Form.new('Bob', 24)

# Each object has its own @name and @age

# Instance variables are private by default; you can't access the directly from outside the object.
# That privacy is helpful because it keeps callers from poking at internal state without going through
# the methods you provide. When the object needs to change later, you can update the
# implementation inside the class without changing every caller that uses it.

# Instance Methods
# Instance methods are behaviors that belong to objects. They're defined inside the class and
# can access instance variables:

class Fruit
  def initialize(fruit, expiration_time)
    @fruit = fruit
    @expiration_time = expiration_time
  end

  def expired
    if @expiration_time >= 7
      "This fruit #{@fruit} are spoiled!"
    else
      "This fruit #{@fruit} are fresh!"
    end
  end
end

new_fruit1 = Fruit.new('banana', 4)
new_fruit2 = Fruit.new('tomato', 9)

puts new_fruit1.expired
puts new_fruit2.expired

# Instance methods define the behaviors that belong to each object, They have direct access to
# instance variable through the @ prefix, which means they can read and modify the object's internal
# state without needing getters and setters. This is what makes objects self-contained:
# the data and the operations on that data live together in one place.

# Accessor Methods
# To read or modify instance variables from outside the object, you need accessor methods.
# Ruby provides shorthand macros for this:

class Market
  def initialize(functionary, worked_today)
    @functionary = functionary
    @worked_today = worked_today
  end

  # Shorthand for reading the variable
  attr_accessor :functionary
  # Shorthand for modifying the variable
  # Shorthand for both reading and writing
  attr_accessor :worked_today
end

market = Market.new('Deveras', true)

puts market.functionary

market.functionary = 'Jon'
puts market.functionary

# For most cases, use "attr_accessor" to create both getter and setter methods.
# Use "attr_reader" or "attr_writer" when you only need one.

# The to_s Method
# Ruby call the "to_s" method automatically when you convert an object to a string (like with puts).
# Override it to make your objects display useful information:

class ShowString
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    "String: #{@name}, #{@age} years old"
  end
end

show_string = ShowString.new('deveras', 32)
puts show_string

# The "to_s" method is called automatically whenever Ruby needs a string representation of your object,
# for example, in string interpolation or when passed to "puts". Overriding it gives you control over
# how your object appear in logs, error messages,
# and debugging output without explicit conversion code time.

# Class variables and class methods
# Sometimes you need data that belongs to the class itself, not individual objects.
# Use class variables (@@) and class methods:

class School
  # Class variable - shared by all instances
  @@enrolment = 0

  def initialize(name)
    @name = name
    @@enrolment += 1 # Increment when new School created
  end

  # Class method - called on the class, not instances
  def self.enrolments
    @@enrolment
  end

  def introduce
    "Hi, I'm #{@name}"
  end
end

school1 = School.new('Schiavon')
school2 = School.new('Deveras')

puts School.enrolments
puts school1.introduce
puts school2.introduce

# Class methods are defined with "self.method_name"
# and are useful for factory methods or operations that don't need instance data.

# -------------------------------------END-------------------------------------------- #

# Summary
# Classes let Ruby code move from simple values to custom objects with behavior.
# Once you understand initialize, instance variables, accessor methods, and class methods,
# you can organize Ruby programs around meaningful objects instead of around scattered pieces of state.

# That structure pays off quickly. When the code grows, each class gives you a place to put the rules for
# one concept, and that makes the rest of the program easier to scan.
# If a method becomes hard to explain in one sentence, it is often a sign that its class needs to be broken into smaller responsibilities.

# That is usually the point where classes stop feeling theoretical and start feeling practical.

# When to use classes
# Use classes when you need to:
#    Model real-world entities with properties and behaviors
#    Group related data and functionality together
#    Create multiple instances with shared behavior but different data
#    Organize code into reusable components

# When not to use classes
# Avoid classes when:
#    You only need to group a few unrelated methods
#    A simple module would suffice
#    Functional programming patterns fit better (like with Enumerable)

# Conclusion
# Classes and objects are essential tools in Ruby. They let you create custom data types with their
# own behavior, organize code logically, and model real-world concepts in your programs.
