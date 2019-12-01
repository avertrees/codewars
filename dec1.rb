A = [3,2,1]
B = []
C = []

def move(n,source,target,auxiliary)
  if n > 0 
    move(n-1, source, auxiliary, target)
    target << source.pop()
    puts "A = #{A}"
    puts "B = #{B}"
    puts "C = #{C}"
    move(n-1,auxiliary,target,source)
  end  
end

move(3,A,C,B)