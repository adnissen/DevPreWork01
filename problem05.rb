found = false
# start at this number since we know it has to be higher than that
index = 2520

def checkNum(num)
  # just quick shortcuts to speed up the process 4x 
  if num % 2 != 0 or num % 10 != 0
    return false
  end
  # an alternate way would be to check for mod 1-20
  # but I like this solution more, because it double checks everything 
  for i in 1...20
    # debug line if you want to see the computer list out all the numbers
    #puts "index: " + num.to_s + " i: " + i.to_s + " res: " + (num % i).to_s
    if num % i != 0
      return false
    end
  end
end

while !found
  # just keep going until it makes it past the 'return false' and we're good
  if checkNum(index) == false 
    index = index + 1
  else
    found = true
    puts index
  end
end
