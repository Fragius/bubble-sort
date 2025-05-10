array = gets.chomp.split(",").map {|item| item.to_i}

def bubble (array)
  sorted_array = array
  array.length.times do 
    array.each_with_index do |item, index|
      unless index + 1 == array.length
        next_item = array[index + 1]
        if item > next_item
          sorted_array[index] = next_item
          sorted_array[index + 1] = item
        end
      end
    end
  end
  sorted_array
end

p bubble array