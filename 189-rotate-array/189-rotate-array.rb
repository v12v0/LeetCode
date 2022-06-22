# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    
  k.times do 
      last_number = nums.pop()
      nums.unshift(last_number)
  end 
    
    
end