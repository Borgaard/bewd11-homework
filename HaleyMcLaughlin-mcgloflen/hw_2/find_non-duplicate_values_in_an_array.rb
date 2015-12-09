def non_duplicated_values(values)
  (values).find_all { |i|  values.count(i) == 1 }
end