def input_students
  puts "Please enter the information for the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  
  # Create an array to check for typos for cohort months
  typo_check = ["No entry", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  while true do
    puts "Name: "
    name = gets.chomp
    puts "Cohort: "
    cohort = gets.chomp

    # Create a break for no entries situation
    if name.empty? && cohort.empty?
      break
    elsif name.empty?
      name = "No entry"
    elsif cohort.empty?
      cohort = "No entry"
    end

    # Check for typos for cohort variable
    while !typo_check.include?(cohort.downcase.capitalize)
      puts "Enter Cohort again or input 'No entry': "
      cohort = gets.chomp
    end
    
    # add the student given to us as a hash to the array
    students << {name: name.downcase.capitalize, cohort: cohort.downcase.capitalize.to_sym}
    puts "Now we have #{students.count} students"
  end
  # return the array of students once the person is done
  students
end

# This represents the default header that will always
def print_header
  puts "The students of Villains Academy"
  puts "-------------------"
end

# Next lets create the print method with 1 argument 'names'
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
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
