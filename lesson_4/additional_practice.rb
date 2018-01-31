# Lesson 4 - Additional Practice

# 1. Given the array below
#      flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#    Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = flintstones.each_with_index.to_h
 # => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}
 
# 2. Add up all of the ages from the Munster family hash:
#      ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

just_ages = []
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.each_with_object([]) do |pair, array|
  just_ages = array << pair.last
end

ages_sum = just_ages.sum
# => 6174 

# Or you can just do this. Its more efficient.
ages_sum = ages.values.sum

# 3. In the age hash:
#      ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#    throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages_under100 = ages.delete_if {|key,value| value >= 100}

# 4. Pick out the minimum age from our current Munster family hash:
#      ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie"   => 10, "Marilyn" => 22, "Spot" => 237 }

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.select {|k,v| v < 15} 
# or use this
ages.values.min

# 5. In the array:
#       flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#    Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.index { |name| name[0, 2] == "Be" } 
# solution comes from Array#index in ruby codumentation => index {|item| block}

# 6.  Amend this array so that the names are all shortened to just the first three characters:
#.      flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
 
flintstones.map! do |name|
  name[0, 3]
end

# 7. Create a hash that expresses the frequency with which each letter occurs in this string:
#     statement = "The Flintstones Rock"

statement.scan(/[[:alpha:]]/i).each_with_object(Hash.new(0)) { |c, h| h[c] += 1 }

# 8. What happens when we modify an array while we are iterating over it? What would be output by this code?
numbers = [1, 2, 3, 4]
umbers.each do |number|
 p number
  numbers.shift(1)
end

 
# 9. As we have seen previously we can use some built-in string methods to change 
#     the case of a string. A notably missing method is something provided in Rails, 
#     but not in Ruby itself...titleize. This method in Ruby on Rails creates a string 
#     that has each word capitalized as it would be in a title. For example, the string:
     words = "the flintstones rock"
# would be:
     words = "The Flintstones Rock"
     
#  Write your own version of the rails titleize implementation.     

words.split.map(&:capitalize).join(' ')

# 10. 
