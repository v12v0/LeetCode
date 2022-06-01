# @param {Integer[]} nums
# @return {Integer}
# get the uniq items 
# uniq.length - nums would give you the number of elements that was removed k
# push all the k into the nums 
# return the index of where the first k appears 
def remove_duplicates(nums)
    nums.uniq!
    nums.length
    
end