# Find non-duplicate values in an Array

def non_duplicated_values(values)
  values.delete_if { |i| values.count(i) > 1 }
end