# Lets add user input to make the user build the
# # student directory with student names rather than 
# # hardcoding the student names into the hash

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # use user input to get the first name
  name = gets.chomp
  # the below reads as 
  # while the name variable (above) is not empty
  # repeat the code in this while loop
  while !name.empty? do
    # add the student given to us as a hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get the next student
    name = gets.chomp
  end
  # return the array of students once the person is done
  students
end

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
# Lets begin by getting the users input for the hash of student
# then save it to the variable students
students = input_students
print_header
print(students)
print_footer(students)

# Notice how much easier the last few lines are to read
# it's almost like english
#
# Even though we used more lines of code this is a better solution
