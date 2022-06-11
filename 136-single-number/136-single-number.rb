# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    hash = Hash.new
    
    nums.each do |n|
        if hash[n]
            hash.delete(n)
        else 
            hash[n] = true
        end 
    end 
    p hash.keys.first
end