# Create an Array to hold all the student names
students = [
  {name: "Dr Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffery Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
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
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
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
