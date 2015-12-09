user_names = ["Bob Jones", "Cindy Smith", "Kelsey Scott"]

user_emails = ["bob@gmail.com", "csmith@yahoo.com", "kscott@hotmail.com"]

class MergeHelper

    def self.merge_arrays(array1,array2)
        final_array = []
        for i in 0..2 
            int_array = [array1[i],array2[i]]
            final_array.push(int_array)
        end
        
        return final_array
    end
end

p MergeHelper.merge_arrays(user_names, user_emails)

class MergeHelper2

    def self.merge_arrays(array1,array2)
       a = [array1[0],array2[0]] 
       b = [array1[1],array2[1]]
       c = [array1[2],array2[2]]
       final_array = [a,b,c] 
       return final_array
    end 
end

p MergeHelper2.merge_arrays(user_names, user_emails)

class CreateHash
    def self.hashcreator(array)
      h1 = Hash[array.map {|key,value| [key,value]}]
    return h1
    end
end

b = MergeHelper.merge_arrays(user_names, user_emails)
p CreateHash.hashcreator(b)



