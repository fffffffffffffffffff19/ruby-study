# Whitespace in Ruby Program
# whitespace characters such as space and tabs are generally ignored in Ruby code,
# except when they appear in strings. Sometimes, however, they are used to interpret ambiguous statements.
# Interpretations of this sort produce warnings when the -w option is enabled.

# Example:
# a + b is interpreted as a+b (Here is a local variable)
# a +b is interpreted as a(+b) (Here is a method call)

# Line Endings in Ruby program
# Ruby interprets semicolons and newline characters as the ending of a statement.
# However, if Ruby encounters operatos, such as &plus;, −, or backslash at end of line,
# they indicate the continuation of a statement.

# Ruby identifiers
# Identifiers are name of variables, constants, and methods. Ruby identifiers are case sensitive.
# It means Ram and RAM are tow different identifiers in Ruby.

# Reserved words
# The following list shows the reserverd words in Ruby.
# These reserved words may not be used as constant or variable names.
# They can, however, be used as method names.

# |   BEGIN  |   do   |  next  |   then   |
# |    END   |  else  |   nil  |   true   |
# |   alias  |  elsif |   not  |   undef  |
# |    and   |   end  |   or   |  unless  |
# |   begin  | ensure |  redo  |   until  |
# |   break  |  false | rescue |   when   |
# |   case   |   for  | retry  |   while  |
# |   class  |   if   | return |   while  |
# |    def   |   in   |  self  | __FILE__ |
# | defined? | module |  super | __LINE__ |

# Ruby BEGIN Statement
# Declares code to be called before the program is run.

# BEGIN {
# 	code
# }

# Example:
puts 'This is main Ruby Program'

BEGIN {
  puts 'Initializing Ruby Program'
}

# Ruby END statement
# Declares code to be called at the end of the program.

# END {
# 	code
# }

# Example:
puts 'This is main Ruby Program!'

END {
	puts 'Terminating Ruby Program!'
}

# Here document in Ruby
# "Here Document" refers to build strings from multiple lines.
# Following a "<<" you can specify a string or an indentifier to terminate the string literal,
# and all lines following the current line up the terminator are the value of the string.

# If the terminator is quoted, the type of quotes determines the type of the line-oriented string literal.
# Notice there must be no space between "<<" and the terminator.

print <<EOF
   This is the first way of creating
   here document ie. multiple line string.
EOF

print <<"EOF"; # same as above
   This is the second way of creating
   here document ie. multiple line string.
EOF

print <<`EOC` # execute commands
  echo hi there
  echo lo there
EOC

print <<"FOO", <<"BAR" # you can stack them
	I said foo.
FOO
	I said bar.
BAR
