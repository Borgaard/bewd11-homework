puts "Sort the words in a given sentence"

def sort_string(string)
  array = string.split
  array.sort! { |x, y| x.length <=> y.length}
  array.join(' ')
end