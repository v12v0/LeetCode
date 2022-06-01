# @param {Integer[]} nums
# @return {Integer}
# sliding window 
# have a max value of 0 
# add numbers in the window
# current window 
#  if the sum is greater than the max then set the new max
# if the sum is smaller than the max then move on to the next
# return the max 


def max_sub_array(nums)
    current_sum = nums[0]
    current_max = current_sum
    
    return nums[0] if nums.length == 1 
    
    nums[1..-1].each do |n|
        current_sum = [current_sum + n, n].max 
        current_max = [current_sum, current_max].max
        
    end 
    
    current_max
end