def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
    #takes the number and remove the person from queue.
  end
end

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently: "
    #if there is no one in line puts message "the line is empty"
    #if there is puts the message the line is currently: 

    katz_deli.each_with_index do |value, index|
      message += "#{index.to_i+1}. #{value}"
      #changes the index to integer, add one to start from 1 instead of from 0.
    end

    puts "#{message}"
  end
end
