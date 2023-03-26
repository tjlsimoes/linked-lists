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

    def at(index)

        if index == 0
            @head

        else
            
            def recursive_noding_ii(node, index, i = 0)
                
                if node.next_node
                    i += 1
                    
                    return node.next_node if i == index
                    return recursive_noding_ii(node.next_node, index, i) if node.next_node != nil 
                end
            end

            recursive_noding_ii(@head, index)
        
        end

    end


    def pop
        size = self.size

        bfr_last = self.at(size - 2)

        bfr_last.next_node = nil
        @tail = bfr_last
    end


    def contains?(value)

        def recursive_noding_iii(node, value)
                
            if node.next_node.value == value
                true
            else
                return recursive_noding_iii(node.next_node, value) if node.next_node != nil 
                false
            end

        end

        recursive_noding_iii(@head, value)

    end


    def find(value)

        def recursive_noding_iv(node, value, i = 0)
                
            if node.value == value
                i              
            else
                i += 1
                return recursive_noding_iv(node.next_node, value, i) if node.next_node != nil 
                nil
            end

        end

        recursive_noding_iv(@head, value)

    end

    def to_s

        def recursive_noding_v(node, values = [])
            
            values << node.value
            return recursive_noding_v(node.next_node, values) if node.next_node != nil              

            mapped_values = values.map { |value| "( #{value} ) -> "}

            mapped_values.join + "nil"
        end

        recursive_noding_v(@head)
    end


    def insert_at(value, index)

        if index == 0
            self.prepend(value)
        elsif index == self.size - 1
            self.append(value)
        else 
            # insert new node at index
            # pre-index node points to other node
            # need for inserted node to noted pointed to by pre-index node
            # need for pre-index node then to point to inserted node

            new_node = Node.new(value)
            pre_index = self.at(index - 1)
            new_node.next_node = pre_index.next_node
            pre_index.next_node = new_node
        end

    end


    def remove_at(index)

        if  index == 0
            
            @head = @head.next_node

        elsif index == self.size - 1

            self.pop
        else 
            # remove node at index
            # pre-index node needs to point to node to be removed's next node

            pre_index = self.at(index - 1)
            pre_index.next_node = self.at(index).next_node

            # Will the memory of the "removed" node be freed this way?
        end

    end


end

linked_list = LinkedList.new

linked_list.prepend("hello")
linked_list.prepend("Hallo")
linked_list.append("Zdravo")

p linked_list.to_s

