class PolyTreeNode

attr_reader :value, :parent, :children

    def initialize(value = nil)

        @value = value
        @parent = nil
        @children = []
    end


    def parent=(parent)

        if self.parent
            self.parent.children.delete(self)
        end

        @parent = parent 
        self.parent.children << self unless self.parent.nil?

    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
        if child && !self.children.include?(child)
            raise 'not the child!'
        end
        child.parent = nil
    end
        
end

class Searchable


    def BFS(target_value)
        queue = [self]

        until queue.empty?
            val = queue.shift()
            if val == target
                return val
            else
                queue << self.children
            end
        end
        




        
    end

    # def DFS(root, target)

    # end

end