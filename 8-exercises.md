# Checklist for the step 8: Exercises
Below are the specifications for each task, check them off as you go through them.

| Status | Task | Description |
| --- | --- | --- |
|  :heavy_check_mark: |  **1** | We're using the each() method to iterate over an array of students. How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? Hint: look into `each_with_index()` |
|  :heavy_check_mark: |  **2** | Modify your program to only print the students whose name begins with a specific letter. |
|  :heavy_check_mark: |  **3** | Modify your program to only print the students whose name is shorter than 12 characters. |
|  :heavy_check_mark: |  **4** | Rewrite the `each()` method that prints all students using `while` or `until` control flow methods (Loops). |
|  :heavy_check_mark: |  **5** | Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc. |
|  :heavy_check_mark: |  **6** | Research how the method `center()` of the `String` class works. Use it in your code to make the output beautifully aligned. |
|  :heavy_check_mark: |  **7** | In the `input_students` method the cohort value is hard-coded. How can you ask for both the name and the cohort? What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? How will you convert it to a symbol? What if the user makes a typo? |
|  :heavy_check_mark: |  **8** | Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. To do this, you'll need to get a list of all existing cohorts (the `map()` method may be useful but it's not the only option), iterate over it and only print the students from that cohort. |
|  :heavy_check_mark: |  **9** | Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". How can you fix it so that it uses the singular form when appropriate and plural form otherwise? |
|  :heavy_check_mark: |  **10** | We've been using the `chomp()` method to get rid of the last return character. Find another method among those provided by the `String` class that could be used for the same purpose (although it will require passing some arguments). |
|  :heavy_check_mark: |  **11** | Fix the typos in the file provided |
|  :heavy_check_mark: |  **12** | What happens if the user doesn't enter any students? It will try to print an empty list. How can you use an `if` statement (Control Flow) to only print the list if there is at least one student in there? | 
