def map(source_array)
    new_array = []
    i = 0
    while i < source_array.length
        new_array << yield(source_array[i])
        i+=1
    end
    new_array 
end

def reduce(source_array, starting_value = nil)
  i = 0
  if starting_value == nil
    starting_value = source_array.first
    i += 1
  end
  
  while i < source_array.length do
    starting_value = yield(starting_value, source_array[i])
    i += 1
  end
  starting_value
end













