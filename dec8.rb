#day one puzzle one for advent of code
def sumOfTotalFuel(modules) 
  # puts modules
  modules.map do |mass|
    findFuel(mass)
  end.sum
end

#day one puzzle two for advent of code
def findFuel(mass)
  f = (mass/3).floor - 2
  if(f <= 0)
    return 0 
  else 
    return f + findFuel(f)
  end
end

#day two puzzle one for advent of code
def programAlarm(input)
  last = input.find_index(99)

  # input.slice(0..last)
  # puts input
  
  puts input.each_slice(4).to_a[0]

  input.map do |integer|
    if integer[0] == 99
      puts " #{integer} at position #{i} is 99"
      break
    else
      x = input[1] #value a 
      y = input[2] #value b
      z = input[3] #position to be stored
      if integer[0] == 1
        puts " #{integer} at position #{i} is 1"
        input[z] = x + y
      elsif integer[0] == 2
       puts " #{integer} at position #{i} is 2"
       input[z] = x * y  
      end
    end
  end
end