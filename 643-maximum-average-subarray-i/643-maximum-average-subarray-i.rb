# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    window_sum = nums[0..k-1].sum 
    max_sum = window_sum 
    first_number = 0 
    
    nums[k..nums.length].each do |i|
        window_sum = window_sum + i - nums[first_number]
        first_number += 1
        max_sum = window_sum if window_sum > max_sum 
    end 
        max_sum / (1.0 * k )
end