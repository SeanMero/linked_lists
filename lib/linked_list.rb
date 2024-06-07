# contains methods for adding nodes a linked list
class LinkedList
  attr_accessor :number_of_nodes, :head, :tail

  def initialize(_a = [])
    @head = nil
    @tail = nil
    @number_of_nodes = 0
  end

  def append(value)
    this = Node.new(value)
    self.push(this)
    if head.nil?
      @head = this
    else
      @tail = this
    end
    @number_of_nodes += 1
  end

  def prepend(value)
    this = Node.new(value)
    self.unpush(this)
    this.next_node = head
    @head = this
    @number_of_nodes += 1
  end

  def size
    puts number_of_nodes
  end

  def at(index)
    self[index]
  end

  def pop
    self.delete(-1)
    @tail = self[-1]
    tail.next_node = nil
  end

  def contains?(value)
    self.include?(value)
  end

  def find(value)
    self.find_index(value)
  end
end
