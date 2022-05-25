# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
   window = nums[0..k-1].sum
    max = window 
    front = 0 
    
    nums[k..-1].each do |num|
        window = window + num - nums[front]
        front +=1 
        max = window if window > max 
    end 
    
    max / (1.0 * k )
end