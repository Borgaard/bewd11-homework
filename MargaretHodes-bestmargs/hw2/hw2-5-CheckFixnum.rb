puts "Problem: check if all elements in an array are fixnum:"

def array_of_fixnums?(array)
  array.all? do |num|
    num.is_a?(Fixnum)
  end
end

test_array = [true, 4, 5, "word"]

puts "This is the test array: #{test_array}"

puts "This is the output when array_of_fixnums? is called: \"#{array_of_fixnums?(test_array)}\""

puts