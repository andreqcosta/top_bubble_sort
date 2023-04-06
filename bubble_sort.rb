# move the biggest number to the end of the array, pop it, add to sorted array

def bubble_sort(array)
    sorted_array = []
    until array.size.zero?
        for i in 0..array.size
            if array[i + 1] != nil && array[i] > array[i + 1]
                holder = array[i]
                array[i] = array[i + 1]
                array[i + 1] = holder
            end    
        end
        sorted_array.unshift(array.pop)
    end
    sorted_array
end

puts bubble_sort([4,3,78,2,0,2]).to_s
puts bubble_sort([4, 2, 3, 1, 5, 9, 6]).to_s