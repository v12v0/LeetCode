# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s.downcase.gsub(/[^a-zA-Z0-9]/, "").reverse ==   s.downcase.gsub(/[^a-zA-Z0-9]/, "")

end