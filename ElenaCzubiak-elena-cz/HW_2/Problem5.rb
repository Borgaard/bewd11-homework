puts "Check if all elements in an array are Fixnum"

def array_of_fixnums?(array)
  truth_array = []
  array.each { |i| truth_array << i.is_a?(Fixnum)}
  !truth_array.include?(false)
end
     