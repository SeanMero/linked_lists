# contains methods for adding nodes a linked list
class LinkedList
  attr_accessor :number_of_nodes

  def initialize
    @head = nil
    @number_of_nodes = 0
  end

  def append(value)
    this = Node.new(value)
    @head = this if head == nil
    @number_of_nodes += 1
  end

  def prepend(value)
    this = Node.new(value)
    this.next_node = head
    @head = this
    @number_of_nodes += 1
  end

  def size
    puts number_of_nodes
  end

  def head
    puts @head
  end
end
