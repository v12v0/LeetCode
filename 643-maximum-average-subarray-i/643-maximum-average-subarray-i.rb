# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    window_val = nums[0...k].sum
    max_val = window_val 
    
    for i in 1..nums.length-k
        window_val = window_val - nums[i-1] + nums[i+k-1]
        max_val = window_val if window_val > max_val
    end 
    max_val / (1.0 * k)
    
end