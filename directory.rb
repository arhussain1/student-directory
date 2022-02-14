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

# We are going to break this code down using methods
# Lets start with the print_header method

# This represents the default header that will always
# be present on the top of the codes output
def print_header
  puts "The students of Villains Academy"
  puts "-------------------"
end

# Next lets create the print method with 1 argument 'names'
# This will handle printing all the names of our students
def print(names)
  names.each do |name|
    puts name
  end
end

# Finally lets create the print_footer method
# This will print the total number of students at the end
# of our output. It will have one argument 'names'
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# Nothing will happen until we call the methods above
print_header
print(students)
print_footer(students)

# Notice how much easier the last few lines are to read
# it's almost like english
#
# Even though we used more lines of code this is a better solution
