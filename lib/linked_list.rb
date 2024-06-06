# contains methods for adding nodes a linked list
class LinkedList
  attr_accessor :number_of_nodes, :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @number_of_nodes = 0
  end

  def append(value)
    this = Node.new(value)
    if head == nil
      @head = this
    else
      @tail = this
    end
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

  def tail
    puts @tail
  end
end
