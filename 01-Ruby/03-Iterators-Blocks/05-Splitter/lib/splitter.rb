def size_splitter(array, size)
  one = array.select { |word| word.length == size }
  two = array.reject { |word| word.length == size }
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  [one.sort, two.sort] # In addition to this split, each array should be *sorted*.
end

def block_splitter(array)
  one = array.select { |word| yield(word) }
  two = array.reject { |word| yield(word) }
  # TODO: Return an array of two arrays, the first containing
  #       words of length `size`, the second containing all the other words
  [one.sort, two.sort]
  # TODO: Return an array of two arrays, the first containing
  #       elements for which the given block yields true,
  #       the second containing all the other elements.
  #       No sort needed this time.
end
