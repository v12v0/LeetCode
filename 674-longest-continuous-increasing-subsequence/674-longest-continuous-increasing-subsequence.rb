# @param {Integer[]} nums
# @return {Integer}

# sliding window
# set the starting point to be nums.first 
# set the ending point to be nums[i] 
# counter = 0 
# if starting point < nums[i]
# counter += 1 
# if staring point > nums[i]
# set the starting point to nums[i]
# iterate throught the nums array and compare the counter and change to new number if needed
# return the max counter
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