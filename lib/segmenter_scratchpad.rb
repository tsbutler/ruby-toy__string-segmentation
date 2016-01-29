require_relative "dictionary"

def segment_string(str)
  i = 0 
  index = -1 
  cut = 1 
  arr = [] 
  
  puts "---------------- BEGINNING LOOP -------------------"
  while i < str.length
    puts "--------------------------------------------------"
    puts "i is #{i}"
    puts "index is #{index}"
    puts "cut is #{cut}"
    
    test_word = str[index, cut]
    puts "test_word is #{test_word}"
 
    if dangler?(test_word, index, str)
      puts "Dangler! Dangler! Will Robinson, dangler!"
      
      word_ejected = word_ejected(arr)
      puts "word_ejected is #{word_ejected}"
      puts "arr is #{arr}"
      

      if arr.empty?
        puts "arr is EMPTY!"
        index = -(word_ejected.length + 1)
        puts "index is #{index}"
        cut = (word_ejected.length + 1)
        puts "cut is #{cut}"
        i = (word_ejected.length - 2)
        puts "i is #{i}"

      else 
        puts "After ejecting a word, there's stuff in the array!"
        puts "arr is #{arr}"
        index = -(arr.join.length + word_ejected.length + 1)
        puts "index is #{index}"
        cut = (word_ejected.length + 1)
        puts "cut is #{cut}"
        i = (arr.join.length + word_ejected.length - 1)

      end
      
    elsif valid_word?(test_word)
      puts "#{test_word} is a VALID word!"
      arr.unshift(test_word)
      puts "add #{test_word} to arr"
      puts "arr is #{arr}"
      cut = 1
      puts "Resets cut to #{cut}"
      index -= 1
      puts "index is #{index}"

    else 
      puts "#{test_word} is NOT a valid word!"
      cut += 1 
      puts "cut is #{cut}"
      index -= 1
      puts "index is #{index}"
      
    end 
    i += 1
    puts "i is #{i}"
  end 
  puts "arr is #{arr}"
  arr

  
end 

def dangler?(test_word, index, str)
  !valid_word?(test_word) && -(index) == str.length
end

def word_ejected(arr)
  word_ejected = arr.shift
  return word_ejected
end

segment_string("prejudgerespite")

