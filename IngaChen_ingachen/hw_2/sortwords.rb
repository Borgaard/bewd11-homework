# Problem: Sort the words in a given sentence
def sort_string(string)
  string.split(' ').sort {|x,y| x.length <=> y.length}.join(' ')
end