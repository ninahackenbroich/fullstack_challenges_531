def my_map(array)
  new_array = []
  array.each { |element| new_array << yield(element) }
  new_array
  # TODO: Re-implement the same behavior as `Enumerable#map` without using it! You can use `#each` though.
end
