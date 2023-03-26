class Node
    attr_accessor :next_node, :value

    def initialize(value)
        @next_node = nil
        @value = value
    end

end

class LinkedList
    attr_reader :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def prepend(value)
        if @head == nil
            new_node = Node.new(value)
            @head = new_node
            @tail = new_node
        elsif
            orig_head = @head
            new_node = Node.new(value)
            new_node.next_node = orig_head
            @head = new_node
        end
    end

    def append(value)
        if @head == nil
            new_node = Node.new(value)
            @head = new_node
            @tail = new_node
        elsif
            orig_tail = @tail
            new_node = Node.new(value)
            orig_tail.next_node = new_node
            @tail = new_node
        end
    end

    def size
        if @head == nil
            0
        elsif
            # while next_node of head and head's next nodes is truthy add 1 to counter

            def recursive_noding(node, i = 1)
                
                if node.next_node 
                    i += 1
                    return recursive_noding(node.next_node, i) if node.next_node != nil
                end
                i
            end

            recursive_noding(@head)
        end
    end


end

linked_list = LinkedList.new
p linked_list
linked_list.prepend("hello")
p linked_list
linked_list.prepend("Hallo")
p linked_list

linked_list.append("Zdravo")
p linked_list

p "Head and tail following."


p linked_list.head
p linked_list.tail

p "Size following."

p linked_list.size