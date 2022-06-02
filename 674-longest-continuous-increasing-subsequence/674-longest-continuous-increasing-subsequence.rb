# @param {Integer[]} nums
# @return {Integer}

# sliding window
# if current_value > nums[i]
#  set the current_value to be nums[i]
# if the current_value > nums[i]
# the new length is 
def find_length_of_lcis(nums)
   return 0 if nums.empty?
    return 1 if 1 == nums.size
    
    ans = 1
    i = 0
    (1...nums.size).each do |j|
        if nums[j] <= nums[j-1]
            i = j
        end
        size = j-i + 1
        ans = size if size > ans
    end
    ans
end


