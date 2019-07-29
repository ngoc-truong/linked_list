# Linked List
This exercise is part of [The Odin Project's](https://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists?ref=lnav) lesson on computer science data structures.
The task was to build a linked list and node class. A linked list is a linear collection of data elements (called nodes). A node consists of two attributes: A data attribute and a link/pointer to the next node.

Therefore, we can for example find the data at a specific index, append another node to the end of the list or prepend it to the beginning.

## Methods
The task was to create the following methods:
- #append: Adds new node to the end of the list
- #prepend: Adds new node to the beginning of the list 
- #size: returns the number of nodes in the list
- #head: returns the first node
- #tail: returns the last node 
- #at(index): returns the node at the given index
- #pop: removes the last element 
- #contains?: returns true if the passed in value is in the list
- #find(data): returns index of node containing data, or nil if not found
- #to_s represents LinkedList objects as string, e.g. ( data ) -> ( data ) -> (data) -> nil 
- #insert_node_at_index(node, index): Inserts a node at the given index 
- #remove_at(index): removes a node at the given index