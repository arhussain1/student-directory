
# Add user input
def input_students
  # create an empty array
  students = []
  # Create the name variable and put something in it to allow the while loop to run
  name = "foo"
  while !name.empty? do
    # Ask for each variable 
    puts "Please enter the name of the student"
    puts "To finish, just hit return twice"
    name = gets.chomp
    break if name.empty?
    # add the student given to us as a hash to the array
    students << {name: name.capitalize, cohort: :november}
    puts "Now we have #{students.count} students"
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
  students.each_with_index do |student, number|  
    output = "#{number + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
    puts output.center(40)
  end
end

# Finally lets create the print_footer method
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
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
