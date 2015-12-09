module UserData
   def self.merge_data(arr1, arr2)
        new_array = []
        arr1.each_with_index do | str, index |
        new_array << [arr1[index], arr2[index]]
        end
        return new_array
    end    
    
    def self.create_hashes(arr, key1, key2)
        newer_array = []
        arr.each do |el|
            new_hash = {
                key1 => el[0],
                key2 => el[1]
            }
        newer_array << new_hash    
        end
        return newer_array
    end
end    

