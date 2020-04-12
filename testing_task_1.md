### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # ruby methods should be written differently: check_for_ace
    if card.value = 1 # this line should be written with the comparison operator == rather than assigning the value of 1 to card.value
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #function should start with def; parameters card1 and card2 should be separated by a comma
  if card1.value > card2.value # flawed logic here: card2 will be returned as highest card even if card1.value == card2.value
    return card # returning unassigned variable; should be card1
  else
    return card2
  end
end
end # this function only needs two end statements, not three

def self.cards_total(cards)
  total # total should be declared like this: total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total #this return statement needs to come after we exit the for loop; otherwise the total will be wrong.
    # also, total should be included in the string through interpolation 
  end
end  #an end statement to for the Class is missing here

```
