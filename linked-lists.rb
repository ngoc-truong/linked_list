class LinkedList
    attr_accessor :head, :tail
    def initialize
        @head = nil 
        @tail = nil
    end

    def append(node) 
        if @head.nil? && @tail.nil?
            @head = node 
            @tail = node
        else
            @tail.next_node = node 
            @tail = node
        end
    end

    def prepend(node) 
        node.next_node = @head 
        @head = node 
    end

    def size
        counter = 0
        current_node = @head
        while current_node != nil 
            if @head.next_node.nil? 
                return counter += 1
            else 
                counter += 1
                current_node = current_node.next_node
            end 
        end
        counter 
    end

    # Actually, not necessary since we've got attr_accessors
    def head 
        @head
    end

    def tail 
        @tail 
    end

    def at(index) 
        current_node = @head

        if index < self.size 
            index.times do |num| 
                current_node = current_node.next_node
            end
        else 
            return "Sorry, but there is no Node at this index."
        end

        current_node
    end

    # Removes last element from the list
    def pop 
        # Set the last Node to nil
        @tail = nil 
        # Get the 2nd to last Node
        second_to_last = self.at(self.size - 2)

        @tail = second_to_last
        second_to_last.next_node = nil
    end

    def contains?(data)
        current_node = @head

        while current_node != nil 
            return true if current_node.value == data 
            current_node = current_node.next_node
        end
        return false
    end

    def find(data)
        index = 0
        current_node = @head

        while current_node != nil 
            return index if current_node.value == data
            current_node = current_node.next_node 
            index += 1
        end
        return nil
    end

    def to_s 
        list_string = "" 
        current_node = @head

        while current_node != nil 
            list_string += "( #{current_node.value} ) -> "
            current_node = current_node.next_node
        end

        list_string + "nil" 
    end

    def insert_node_at_index(node, index)
        node.next_node = self.at(index)

        if index == 0 
            @head = node 
        elsif index > 0 && index < self.size
            self.at(index - 1).next_node = node
        else 
            puts "Sorry, but your index is too high. It will not be inserted."
        end 
    end

    def remove_at(index) 
        if index == 0 
            @head = self.at(index + 1)
        elsif index == self.size - 1
            @tail = self.at(index - 1)
            @tail.next_node = nil 
        elsif index > 0 || index < self.size - 1
            self.at(index - 1).next_node = self.at(index + 1)
        else 
            puts "Sorry, but your index is too high. No item will be removed."
        end
    end
end


class Node 
    attr_accessor :value, :next_node

    def initialize(data = nil)
        @value = data 
        @next_node = nil
    end
end


ll = LinkedList.new
ll.append(Node.new("Nogo"))
ll.append(Node.new("Chey"))
ll.prepend(Node.new("Mopsi"))

# => Mopsi, Nogo, Chey