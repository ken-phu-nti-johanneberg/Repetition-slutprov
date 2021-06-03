# Gör både bubble sort och selection sort
# Optimerad bubble sort innebär att man går ut loopen när en swap har skett med hjälp av break
# Hur optimerar man selection sort?
# Ska man ta bort de med 0 
# Hur knyter man namn till tiderna?

# def bubble_sort(array)
# i = 0
# # Varför har vissa while swap != true är den då optimerad eller måste man ha break också
# # while i < array.lengh -1 är mer optimerad tror jag eftersom att det betyder att programmet inte går igenom array en gång till. Den sista gången den gör det är onödig också eftersom det verkar sortera som den ska även om det är -1 eller inte.
#     while i < array.length - 1
#         j = 0
#         swap = nil
#         while j < array.length - 1
#             if array[j] > array[j+1]
#                 swap = array[j+1]
#                 array[j+1] = array[j]
#                 array[j] = swap
#             end
#         j += 1
#         end
#     i += 1
#     end
#     p array
# end

def sort_time()
    string_file = File.read("time.txt")
    time_array = []
    # .split(" ") separar allt till egna element
    elements = string_file.split(" ")
    i = 0
    j = 0
    while i < elements.length
        if i % 2 == 0
            # map - returnerar en ny array gäller även för delete tror jag
            # map! - ändrar samma array gäller även för delete! tror jag
            elements[i].delete!(",")
        end
    i += 1
    end

    while j < elements.length
        if j % 2 != 0
            time_array << elements[j]
        end
        j += 1
    end
    # Ändrar på alla element i en array till en class
    time_array = time_array.map!(&:to_i)

    p time_array

    return selection_sort(time_array)

end

def selection_sort(time_array)
    sorted_array = []
    while time_array.length > 0
        i = 0
        min = 0
        while i < time_array.length
            if  time_array[min] > time_array[i]
                min = i
            end
            i += 1
        end
    sorted_array << time_array[min]
    time_array.delete_at(min)
    end
    p sorted_array
end

p sort_time()