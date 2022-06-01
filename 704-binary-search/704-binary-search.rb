# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    nums.sort! 
    nums.include?(target) ? nums.find_index(target) : -1 

end