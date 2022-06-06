# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = Hash.new(0)
    
    nums.each do |num|
        hash[num] += 1
    end 
    	hash = hash.sort_by{|k, v| v}.reverse  
		hash.each{|k, v| return k}     
    
end