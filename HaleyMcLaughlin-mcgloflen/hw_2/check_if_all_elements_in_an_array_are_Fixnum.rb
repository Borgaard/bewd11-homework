def array_of_fixnums?(array)
  array.all? { |i| i.is_a? Fixnum }
end