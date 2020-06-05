### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame

# function name (checkforAce) should be in all lowercase
# function should be called on class self (e.g. self.checkforace)
# function should have underscores to separate words to improve readability (e.g check_for_ace)
  def checkforAce(card)
    # if statement should have double equals sign to show that it is checking for equality
    if card.value = 1
      return true
    else
      return false
    end
  end

# function should be called on class self (e.g. self.highest_card)
# Spelling error - should be def at the start of a function name
# Comma needed between card1 & card2 in the parameters
  dif highest_card(card1 card2)
  # if statement should be indented to improve readability
  if card1.value > card2.value
    # The return will not be possible as card has not been defined in the function, should be card1
    return card
  else
    return card2
  end
end
# The 'end' below closes the CardGame class so the next function self.cards_total cannot be called inside the CardGame class. This 'end' should be moved to the bottom of the code.
end

def self.cards_total(cards)
  # total needs to be assigned a value (e.g. total = 0)
  total
  for card in cards
    total += card.value
    # return statement should be outside the for loop, it will only iterate over the first card of cards and then exit the function when the return is hit
    # total should be interpolated or converted to a string
    return "You have a total of" + total
  end
end
```
