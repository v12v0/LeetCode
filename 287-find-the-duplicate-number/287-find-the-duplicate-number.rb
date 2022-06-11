# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    nums_hash = Hash.new(0)
    nums.each {|num| nums_hash[num] += 1}
    nums_hash.keys.select{|key,value| nums_hash[key] > 1}.first
    
end