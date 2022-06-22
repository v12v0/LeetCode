# @param {Integer[]} nums
# @return {Integer}
# get the uniq items  and return the length 
def remove_duplicates(nums)
    nums.uniq!
    nums.length
    
end