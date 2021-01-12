def tag(tag_name, attributes = nil)
  content = yield if block_given?
  if attributes.nil? == false
    attr_tag = "#{attributes[0]}=\"#{attributes[1]}\""
    "<#{tag_name} #{attr_tag}>#{content}</#{tag_name}>"
  else

    "<#{tag_name}>#{content}</#{tag_name}>"
  end
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
end
