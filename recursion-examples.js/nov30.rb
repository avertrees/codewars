def parts_sums(ls)
  ls.push(0)
  ls.map.with_index do |x, i|
    if (i === 0) 
      ls.sum    
    else
      ls[i,ls.length-i].sum    
    end
  end
end