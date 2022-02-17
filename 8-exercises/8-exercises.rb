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

    # format the name given by the user
    name_formatted = name.downcase.split(" ").each{|word| word.capitalize!}.join(" ")
    
    # add the student given to us as a hash to the array
    students << {name: name_formatted, cohort: cohort.downcase.capitalize.to_sym}
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
  
  # organise everyone by their cohort and store them in sorted_by_cohort 
  sorted_by_cohort = {}

  students.each do |student|
    cohort = student[:cohort]

    if sorted_by_cohort[cohort] == nil
      sorted_by_cohort[cohort] = []
    end

    sorted_by_cohort[cohort].push(student[:name])
  end

  # Ask what cohort the user wishes to see
  puts "Please enter the cohort you wish to view hit return to view all students"
  user_input = gets.chomp.downcase.capitalize.to_sym
  
  puts "\n\n\n" 
  print_header
  puts
  
  # Now print that cohort
  sorted_by_cohort.each do |cohort, list|
    if user_input == :""
      puts "#{cohort} Cohort\n "
      list.each do |student|
        puts student 
      end
      puts
    elsif cohort == user_input
      puts "#{cohort} Cohort\n"
      list.each do |student|
        puts student
      end
      puts
    end
  end

end

# Finally lets create the print_footer method
def print_footer(names)
  # create a placeholder
  placeholder =
  # figure out whether we should use plural or singular
  names.count > 1 ? placeholder = "students" : placeholder = "student"
  puts "Overall, we have #{names.count} great #{placeholder}"
end

# Lets begin by getting the users input for the hash of student
# then save it to the variable students
students = input_students
print(students)
print_footer(students)

# Notice how much easier the last few lines are to read
# it's almost like english
#
# Even though we used more lines of code this is a better solution
