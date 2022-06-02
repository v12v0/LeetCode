# @param {Integer[]} nums
# @return {Integer}

# sliding window
# if current_value > nums[i]
#  set the current_value to be nums[i]
# if the current_value > nums[i]
# the new length is 
def find_length_of_lcis(nums)
return 0 if !nums or nums.size < 1
    current = 0 
    longest = 0 
    
    nums.each_with_index do |n,i|
        current += 1
        longest = [current,longest].max
        
        if nums[i+1] and n >= nums[i+1]
            current = 0 
        end 
    end 
    longest
end
