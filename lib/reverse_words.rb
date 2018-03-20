
require 'pry'

# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  index = 0
  temp_array = []
  if my_words == nil || my_words.length <= 1
    return my_words
  else
    (my_words.length + 1).times do
      if my_words[index] == " " || index == (my_words.length)
        temp_origin = (temp_array.length - 1)
        temp_target = 0
        temp_temp = nil
        (temp_array.length / 2).times do
          temp_temp = temp_array[temp_target]
          temp_array[temp_target] = temp_array[temp_origin]
          temp_array[temp_origin] = temp_temp
          temp_origin -= 1
          temp_target += 1
        end
        replacement_index = index - 1
        origin_index = (temp_array.length - 1)
        (temp_array.length).times do
          my_words[replacement_index] = temp_array[origin_index]
          replacement_index -= 1
          origin_index -= 1
        end
        temp_array = []
      else
        temp_array << my_words[index]
      end
      index += 1
    end
  end
  return my_words
end
