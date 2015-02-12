require_relative 'lib/linked_list'

list = LinkedList.new(10)

list.push(1)
list.push(14)
list.push(4)
list.push(45) #UN numero cualquiera

puts list.to_s #imprimir la lista de linked_list
puts "reverse >>"
list.reverse
puts list.to_s