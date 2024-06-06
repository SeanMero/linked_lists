# contains methods for adding nodes a linked list
class LinkedList
  attr_accessor number_of_nodes

  def initialize
    @number_of_nodes = 0
  end

  def append(value)
    Node.new(value)
    @number_of_nodes += 1
  end

  def prepend(value)
    Node.new(value)
    @number_of_nodes += 1
  end

  def size
    puts @number_of_nodes
  end
end
