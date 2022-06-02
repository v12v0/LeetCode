# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    hash = {}
    
    nums.each do |n|
        if hash[n]
            hash.delete(n)
        else 
            hash[n] = true
        end 
    end 
    hash.keys.first 
end