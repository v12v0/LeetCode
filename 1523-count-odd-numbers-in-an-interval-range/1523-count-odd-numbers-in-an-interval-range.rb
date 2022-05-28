# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
  low.even? && high.even? ? ((high-low) / 2 )  : ( ((high-low) )  / 2 ) + 1
end