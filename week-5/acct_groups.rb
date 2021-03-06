#!/usr/bin/env ruby

#declare varbiables.
input_file = "users.doc"
group_pref = 4
student_count_overflow = nil
student_count = nil
group_count = 0
sort_array = nil
group_counter = 1
student_counter = 0

def write_group_to_file (array)
  puts array + "\n\n"
end

#loading array from randomized list in a .doc file.
def Load_File_array()
  temp_array = []
    File.open('users.doc') do |file_lines|
      file_lines.lines.each do |line|
        temp_array << line.strip
      end
    end
  #return array of students.
  return temp_array
end


#loading user list, pre-randomized
student_array = Load_File_array()

#count how many student
student_count = student_array.count

#idea group number count
group_count = student_count/group_pref

#how many students are group less with ideal group size. will be added to group 1 - (pref-1)
student_count_overflow = student_count%group_pref

#sort loop
while student_counter < student_count
  #declare variables for sort loop
  #declare array and prep it.
  temp_sort_array = Array.new.to_s
  temp_sort_array.clear
  temp_sort_array[0] = "Group Number: " + group_counter.to_s + "\n"
  #resetting group member counter.
  group_member_counter = group_pref

    #increasing the group size to max level (+1) if there was left over after ideal groups, this only happens for the frist few groups. pref size - 1.
    if group_counter <= student_count_overflow
      group_member_counter += 1
    end

    #Loop to get each group it's number of students.
    while group_member_counter > 0
      temp_sort_array += student_array[student_counter]  + "\n"
      student_counter += 1
      group_member_counter += -1
    end
  puts temp_sort_array  + "\n\n"
  group_counter += 1
end

#reflect

#Qestion: What was the most interesting and most difficult part of this challenge?
#answer: reading in from a file, the logic is handle increasing the size of groups
#Qestion: Do you feel you are improving in your ability to write pseudocode and break the problem down?
#answer: Not really. I have done it a lot before. But practice is always better.
#Qestion: Was your approach for automating this task a good solution? What could have made it even better?
#answer: I would like to have written it out to a file, also added a random sort into it. It could have done a array sort I think, but I would want to use some sort of seed to do it. Also could have used some sort of interface. Like maybe aurguments.
#Qestion: What data structure did you decide to store the accountability groups in and why?
#answer I did not store the data it put put them. The project did not require it. but I did store the random input list.
#Qestion: What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#answer I did not really refactore much. I spent way to long on this one.