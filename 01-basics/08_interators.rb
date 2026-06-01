# iterators
z = ["a", "b", "c", "d", "e"]

for items in z # for array interactor
    print items
end

puts

z.each do |food| # .each do array interactor
    print food + " "
end

puts

z.each {|food| print food + " "} # .each in line array interactor

puts

# selecting only odd numbers in interactor
z = (1..100).to_a.shuffle 
p z.select {|number| number.odd?}
