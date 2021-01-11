def burger(patty, sauce, topping)
  burger = []
  burger << "bread"
  block_given? ? burger << yield(patty) : burger << patty
  burger << sauce
  burger << topping
  burger << "bread"
  burger # TODO: code the `burger` method
end
