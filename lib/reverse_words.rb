

=begin

Variable count:
  1.  index
  2.  word_length
  3.  origin_index
  4.  target_index
  5.  temp_reserv

Loop count:
  (my_words.length + 1).times do  (n times)
  (word_length / 2).times_do  (max of n/2 times)
  total: 1.5 n (polynomial)

=end


def reverse_words(my_words)
  index = 0
  word_length = 0
  if my_words == nil || my_words.length <= 1
    return my_words
  else
    (my_words.length + 1).times do
      if my_words[index] == " " || index == (my_words.length)
        origin_index = (index - 1)
        target_index = (index - word_length)
        temp_reserv = nil
        (word_length / 2).times do
          temp_reserv = my_words[target_index]
          my_words[target_index] = my_words[origin_index]
          my_words[origin_index] = temp_reserv
          origin_index -= 1
          target_index += 1
        end
        word_length = 0
      else
        word_length +=1
      end
      index += 1
    end
  end
  return my_words
end


#  ORIGINAL VERSION:  HELD WORDS TO BE INVERTED INTO A SEPARATE ARRAY:
#
# A method to reverse each word in a sentence, in place.
## Variable count: {
##   my_words   -- input
##   index
##   temp_array -- array
##   temp_origin
##   temp_target
##   temp_temp
##   replacement_index
##   origin_index
##    }

###  Loop count:
###      (my_words.length + 1).times do (n times)
###      (temp_array.length / 2).times do (some fraction of n times)(max of n/2)
###      (temp_array.length).times do (some fraction of n: max of n/1)
###         maximum (I think) of 2.5 n.

# def reverse_words(my_words)
#   index = 0
#   temp_array = []
#   if my_words == nil || my_words.length == 1
#     return my_words
#   else
#     (my_words.length + 1).times do
#       if my_words[index] == " " || index == (my_words.length)
#         temp_origin = (temp_array.length - 1)
#         temp_target = 0
#         temp_temp = nil
#         (temp_array.length / 2).times do
#           temp_temp = temp_array[temp_target]
#           temp_array[temp_target] = temp_array[temp_origin]
#           temp_array[temp_origin] = temp_temp
#           temp_origin -= 1
#           temp_target += 1
#         end
#         replacement_index = index - 1
#         origin_index = (temp_array.length - 1)
#         (temp_array.length).times do
#           my_words[replacement_index] = temp_array[origin_index]
#           replacement_index -= 1
#           origin_index -= 1
#         end
#         temp_array = []
#       else
#         temp_array[temp_array.length] = my_words[index]
#       end
#       index += 1
#     end
#   end
#   return my_words
# end
