# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    nums_hash = Hash.new
    nums.each do |num|
        return num if nums_hash[num]
        nums_hash[num] = true
    end 
    
    
end