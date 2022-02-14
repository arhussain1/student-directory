# Create an Array to hold all the student names
students = [
  "Dr. Hannibal Lecter",
  "Darth vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

# Then print the names
puts "The students of Villains Academy"
puts "--------------"

# Now lets use the .each method to iterate through the
# students array and print each name
students.each do |student|
  puts student
end

# At the end we can add the total number of students
puts "Overall, we have #{students.count} great students"
