# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    ransom_note.chars.uniq.none? do |char|
        ransom_note.count(char) > magazine.count(char)
    end 
end
    
 