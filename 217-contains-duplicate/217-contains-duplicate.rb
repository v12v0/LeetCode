# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    return false if nums.length == nums.uniq.length
    nums.uniq.length > 0 
    
end