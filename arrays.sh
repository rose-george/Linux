#arrays
#all elements: ${var[@]}
# all elements from a certain position: ${var[@]:2}
# to get certain letters from a word at a position: ${var[2]:3}
#all elements from one position to another: ${var[@]:1:4}
#total number: ${#var[@]}
#to remove: unset var[2]
#to replace: var[1]=<name>
#adding a value from a loop to an array: prime+=($i)
