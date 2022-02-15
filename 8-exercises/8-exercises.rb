
# Add user input
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # use user input to get the first name
  name = gets.chomp
  
  while !name.empty? do
    # add the student given to us as a hash to the array
    students << {name: name.capitalize, cohort: :november}
    puts "Now we have #{students.count} students"
    # get the next student
    name = gets.chomp
  end
  # return the array of students once the person is done
  students
end

# Create the default header method
def print_header
  puts "The students of Villains Academy"
  puts "-------------------"
end

# Next lets create the print method with 1 argument 'names'
def print(students)
  index = 0
  while index < students.length do
    puts "#{index + 1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"  
    index += 1
  end
end

# Finally lets create the print_footer method
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

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
