person1 = Hash.new
person1[:first] = "Teo"
person1[:last] = "Demedriades"
person2 = Hash.new
person2[:first] = "Kristy"
person2[:last] = "Buzziero"
person3 = Hash.new
person3[:first] = "Jose"
person3[:last] = "Demedriades-Buzziero"

params = Hash.new
params[:father] = person1
params[:mother] = person2
params[:child] = person3

puts params[:father][:first]
puts params[:child][:last]

