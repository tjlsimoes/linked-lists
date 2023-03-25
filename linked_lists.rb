class Node
    attr_accessor :next_node, :value

    def initialize(value)
        @next_node = nil
        @value = value
    end
end

class LinkedList
    attr_accessor :name

    def initialize
        @head = nil
        @tail = nil
    end
end