def highest_rank(arr)
  # your code here
  rank = {}
#    puts arr
  arr.each do |num|
    if rank.key?(num)
#       puts "here!"
      rank[num] += 1
    else
#       puts "not here!"
#       rank[num] = rank[num] + 1
      rank[num] = 1
    end
  end
  
  rank = rank.sort_by{ |key,value| value }.to_h
  highestVal = rank.values.last
  
  nums = rank.select{|k,v| v == highestVal}
  nums = nums.sort_by{ |k,v| k }.to_h
 
  nums.keys.last
end
