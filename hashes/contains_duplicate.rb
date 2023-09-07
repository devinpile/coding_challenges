# REWRITE THE FOLLOWING TO SOLVE USING A HASH 

# def contains_duplicate(nums)
#     nums.uniq != nums
# end 

# Create a method that returns a boolean for if the sample of numbers contains a duplicate

def contains_duplicate(nums)
    hash = {}
    nums.each do |num|
        return true if hash[num]
        hash[num] = true 
    end 
    false
end 


test1 = [1,2,3,4,5,6,7,4,8,9]
test2 = [1,2,3,4,5,6,7,8,9]

p contains_duplicate(test1) #expect true
p contains_duplicate(test2) #expect false