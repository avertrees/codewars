def sumOfTotalFuel(modules) 
  # puts modules
  modules.map do |mass|
    findFuel(mass)
  end.sum
end