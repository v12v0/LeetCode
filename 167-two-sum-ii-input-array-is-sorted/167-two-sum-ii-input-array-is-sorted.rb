# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    checked={}
    
    numbers.each_with_index do |num, index|
        diff = target - num
        
        if checked[diff]
            index1 = checked[diff] + 1
            index2 = index + 1
            return [index1, index2]
        else 
            checked[num] = index
        end 
    end 
    
end