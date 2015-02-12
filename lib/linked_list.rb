require_relative 'node'

class LinkedList

	def initialize(value)
		@root = Node.new(value)
		@last = @root #para saber cual es el primero y cual es el ultimo
	end

	def push(value)
		new_node = Node.new(value) #al ultimo encadenamos el nuevo valor
		@last.next= new_node
		@last = new_node	
	end

	def each
		node=@root
		while node != nil
			yield(node.value) #reemplazar con el bloque de def to_s
			node = node.next #para que siga con el siguiente y no sea infinito
		end
	end

	def each_node
		node=@root
		while node != nil
			yield(node) 
			node = node.next
		end
	end

	def to_s
		cadena = ""
		self.each do |value|
			cadena << value.to_s + "->"
		end
		cadena
	end

	def reverse
		node=@root
		next_node=node.next
		node.next=nil
		while next_node != nil
			puts "node >> #{node.value}"
			puts "next_node >> #{next_node.value}"
			next_node_after = next_node.next
			next_node.next=node
			node = next_node
			next_node = next_node_after
		end
		temp_last = @last
		@last = @root
		@root = temp_last

		#node=@root #la iteracion es desde la raiz
		#cadena=""
		#while node != nil
			#cadena << node.value.to_s + "->"
			#node=node.next

	#end
	#cadena #para que corra 
		#end
	end
end


