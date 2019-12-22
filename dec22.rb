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

def longest(s)
  # your code here
  puts s
  sub = []
  substrings = {}
  if (s.length == 1)
    substrings[s] = s.length
  else
    s.each_byte do |c|
      if(sub.length == 0)
        sub.push(c.chr)
      elsif(c - sub.last.ord >= 0)
      
        sub.push(c.chr)

        if (sub.last.ord == c)
          s = sub.join.to_s
          substrings[s] = s.length
        end
      else 
        s = sub.join.to_s
        substrings[s] = s.length
        
        sub.clear
        
        sub.push(c.chr) 

      end
   
    end
  end

    max = substrings.values.max
    longest = substrings.select{|k,v| v === max}
    longest.keys[0] 
end
