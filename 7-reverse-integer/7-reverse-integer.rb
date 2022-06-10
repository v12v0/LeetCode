# @param {Integer} x
# @return {Integer}
def reverse(x)
    return 0 if (x.to_s.reverse.to_i) > (2**31)
    
    if x < 0 
        -1*(x.to_s.reverse.to_i)
    else 
        x.to_s.reverse.to_i
    end 
    
    
end