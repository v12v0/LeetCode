# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    ransom_note.chars.uniq.none? do |c|
        ransom_note.count(c) > magazine.count(c)
    end 
    
end
