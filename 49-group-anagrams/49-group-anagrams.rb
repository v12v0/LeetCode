# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    ana_hash = Hash.new
    
    strs.each do |word|
        sort_word = word.chars.sort
        if ana_hash[sort_word] == nil 
            ana_hash[sort_word] = [word]
        else 
            ana_hash[sort_word]<<word
        end 
    end 
   ana_hash.values
end

