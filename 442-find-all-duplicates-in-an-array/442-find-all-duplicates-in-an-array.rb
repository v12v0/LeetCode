# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
    hash = Hash.new(0)
    nums.each {|num| hash[num] += 1}
    hash.keys.select{|key,value| hash[key] > 1}
    
end