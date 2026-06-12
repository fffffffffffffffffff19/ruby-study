# Hashes, the key/value objects
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'Deveras', 'favcolor' => 'red'}

p my_details['favcolor']
p sample_hash['b']

another_hash = {a: 1, b: 2, c: 3}

p another_hash[:a]

puts

p another_hash.keys
p another_hash.values

puts

another_hash.each do |key, value|
    puts "The class for key is #{key.class} and the value is #{value.class}"
end

puts

another_hash[:d] = 999
another_hash[:e] = "Deveras"

p another_hash

puts

another_hash.each { |key, value| puts "Key is #{key} and Value is #{value}" }

puts

p another_hash.select { |k, v| v.is_a?(String) }
another_hash.each { |k, v| another_hash.delete(k) if v.is_a?(String) }

p another_hash