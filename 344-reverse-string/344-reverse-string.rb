# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    left = 0 
    right = s.length - 1
    
    while left < right do 
        s[left], s[right] = s[right] , s[left]
        left += 1 
        right -=1
    end 
  
end
left = 0
