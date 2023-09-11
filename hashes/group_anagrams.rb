#Create a method that takes a given set of words and sort them into collections of anagrams

#psuedo:
#create a hash to store groups of anagrams 
#iterate through each string in the input array 
#sort the string's characters in alphabetical order 
#check if the sorted string is already a key in the hash table 
#if it is, add the current string to the array of anagrams 
#if it is not, create a new key with the sorted string and add the current string as its first value
#return the array of anagram groups

def group_anagrams(strs)
    anagram_groups = Hash.new 
    strs.each do |str|
        sorted_str = str.chars.sort.join
        if anagram_groups.has_key?(sorted_str)
            anagram_groups[sorted_str] << str 
        else
            anagram_groups[sorted_str] = [str]
        end
    end
    anagram_groups.values
end


test1 = group_anagrams(["eat","tea","tan","ate","nat","bat"]) #return [["bat"],["nat","tan"],["ate","eat","tea"]]
test2 = group_anagrams([""]) #return [[""]]
test3 = group_anagrams(["a"]) #return [["a"]]
test4 = group_anagrams(['rate', 'tear', 'earth', 'heart']) #return [["rate", "tear"], ["earth", "heart"]]

p test1
p test2
p test3
p test4