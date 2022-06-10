# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    # iterate through s 
    #put it to a stack
    # if the next c is diff than the previous then increment by 1 
    #save the number as the current max and start the count over 
    #return the max
    current = []
    longest = 0 
    s.each_char do |char|
        if current.include?(char)
            longest = [longest,current.size].max
            index = current.index(char) + 1 
            current = current[index..-1]
        end 
        current << char
    end 
    [longest,current.size].max
end 