# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    note_hash = Hash.new(0)
    mag_hash = Hash.new(0)
    
    ransom_note.each_char do |c|
        note_hash[c] += 1
    end

    magazine.each_char do |c|
        mag_hash[c] += 1
    end

    note_hash.keys.each do |key|
        return false if note_hash[key] > mag_hash[key]
    end 
    true
    
end