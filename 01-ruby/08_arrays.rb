# Arrays
# ordered list of items/elements
# maintais an index

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
a << 10

a.unshift("Deveras") # add anything to the beginning of the array 
a.append("Deveras") # add on the end
a.uniq! # the bang "!" save the mutate
p a.empty? # return true or false if has anything on list
a.include?("Deveras") # return true or false if contain on list
a.push("Schiavon") # same as the .append()

p a


