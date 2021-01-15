def array_to_hash(array)
  hash_new = {}
  if block_given?
    array.each_with_index { |k, i| hash_new[yield(i).to_s] = k.to_s }
  else
    array.each_with_index { |k, i| hash_new[i.to_s] = k.to_s }
  end
  hash_new
  # TODO: implement the method :)
end
