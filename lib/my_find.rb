require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i]) #If the block returns true, return the argument we passed into yield AKA the element in the array that evaluated to true. This will exit the loop and the element will be the return value of the method.
    i = i + 1
  end
end