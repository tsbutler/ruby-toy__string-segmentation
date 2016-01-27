require 'dictionary'

def segment_string(str)
  i = 0
  index = 0
  cut = 1
  arr = []
  if valid_word?(str) == true
    arr << str
  elsif
    while i < str.length
      test_word = str[index, cut]
      if valid_word?(test_word)
        arr << test_word
        index += test_word.length
        cut = 1
        i += 1
        arr
      elsif valid_word?(test_word) == false
        i += 1
      end
    end  
  end
end
puts segment_string("onetwothree")