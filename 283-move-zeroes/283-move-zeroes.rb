# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
   total = nums.count(0)
    nums.delete(0)
 
    total.times do 
         nums << 0 
     end 
   
end


 