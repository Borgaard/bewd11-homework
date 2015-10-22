# Select random elements from an array

def random_select(array, n)
  (1..n).map do |_|
    array[rand(array.length)]
  end
end