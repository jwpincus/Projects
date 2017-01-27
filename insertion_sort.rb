# 

# if it is larger then compare it to the next number in the sorted array
# when the number to be inserted is smaller than the next number, insert the number
require 'pry'
class InsertionSort
    def initialize
    end
    def sort(unsorted_array)

        sorted_array = []
        sorted_array[0] = unsorted_array.shift # take the first number of unsorted array out of array, insert the first number into a new array
        counter = 0
        unsorted_counter = 0
        while unsorted_array.length > 0

            #binding.pry
            if sorted_array[counter] > unsorted_array[0] # take the next number of the array and compare it to the first number in the array
                sorted_array.insert(counter, unsorted_array.shift) # when the number to be inserted is smaller than the next number, insert the number
                counter = 0
            elsif counter == (sorted_array.length - 1)
                sorted_array.insert((counter + 1), unsorted_array.shift) # when the number to be inserted is smaller than the next number, insert the number
                counter = 0
            else 
                counter += 1
            end

        end
        
    sorted_array
    end
    
end

sorter = InsertionSort.new


puts sorter.sort([ "b", "a", "c", "d"])
