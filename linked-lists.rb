class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value)
        @data=LinkedListNode.new(value, @data)
    end

    def pop
        while @data !=nil
            head=@data.value
            @data= @data.next_node
            return head
        end
    end

end


def reverse_list(list)
    
    initial_stack= Stack.new

    while list
       initial_stack.push(list.value)
       list = list.next_node
    end

    final_stack=Stack.new
    value=initial_stack.pop

    while value
        final_stack.push(value)
        value= initial_stack.pop
    end

    flipped_list=nil
    value =final_stack.pop

    while value
        flippedList=LinkedListNode.new(value,flippedList)
        value=final_stack.pop
    end
    flippedList
    # ADD CODE HERE
end



def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
revlist=reverse_list(node3)
print_values(revlist)
