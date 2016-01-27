require 'dictionary'

def segment_string(str)
  i = 0
  index = 0
  cut = 1
  xtra = 1
  arr = []
  skip_counter = 0
  
  if valid_word?(str) == true #String is a word.
    arr << str
  
  elsif # More complex cases.
    while i < str.length
      test_word = str[index, cut]
      
      if valid_word?(test_word) && skip_counter == 0
        arr << test_word
        index += test_word.length
        cut = 1
        i += 1

      elsif valid_word?(test_word) && skip_counter == 1
        skip_counter = "that worked"
      
      elsif valid_word?(test_word) == false
        cut += 1
        i += 1
      
      end
      ca = arr.join.length
      if ca == str.length
        arr
      elsif ca != str.length
        skip_counter = 1
        i = 0
      end
    end  
  end
  arr
  skip_counter
end
puts segment_string("onestwothree")