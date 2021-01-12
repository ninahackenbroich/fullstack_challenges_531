def palindrome?(a_string)
  if a_string.empty?
    false
  else
    a_string.gsub(/\W/, "").gsub(/\d/, "").downcase == a_string.gsub(/\W/, "").gsub(/\d/, "").downcase.reverse
    # TODO: check if a_string is a palindrome
  end
end
