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

    def recursive_noding(node, i = 1)
                
        if node.next_node 
            i += 1
            return recursive_noding(node.next_node, i) if node.next_node != nil
        end
        i
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


p "At index"

p linked_list.at(2)

p linked_list.pop


p "Contains?"

p linked_list.contains?("hello")

p "Find."

p linked_list.find("hello")


p linked_list.to_s

