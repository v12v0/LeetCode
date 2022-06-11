# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
    hash = Hash.new(0)
    
    nums.each do |num|
        hash[num] += 1
    end 
     hash.keys.select{|key,val| hash[key] > 1}
end