require 'pry'
module Launch
  class QueueIsEmpty < StandardError
  end

  class Queue
    def initialize
      @queue = []
    end

    def enter(item)
      @queue << item
    end

    def empty?
      @queue.empty?
    end

    def peek
      @queue[0]
    end

    def leave
      if @queue.empty?
        raise QueueIsEmpty
      else
        @queue.shift
      end
    end
  end


end
