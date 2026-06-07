dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
    # Write code here
    return somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
    # Write code here
    return somehash.find{ |k, v| return v if k == key }
end
 
# Execution flow
loop do
    # Write your program execution code here
    print "Do you want to lookup an area code based on a city name? (Y/N) "
    input = gets.chomp.downcase

    break if input != "y"

    puts
    puts "Which city do you want the area code for?"
    puts get_city_names(dial_book);

    print "Enter your selection: "
    selection = gets.chomp.downcase
    puts get_area_code(dial_book, selection);
end