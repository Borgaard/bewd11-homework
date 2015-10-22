module Helper

  def self.merge_arrays(array1,array2)
    if array1.length == array2.length
      merged_array = []
      array1.each_with_index do |el,i| 
        merged_array[i] = [array1[i],array2[i]]
      end
      return merged_array
    else
      puts "Arrays are different lengths :-("
    end
  end

end
