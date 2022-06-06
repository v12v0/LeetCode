# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
# make a new hash 
 checked = {}
    
    nums.each_with_index do |num,index|
        diff = target - num 
        
        if checked[diff]
            return [checked[diff],index]
        else 
            checked[num] = index
        end 
    end 
end