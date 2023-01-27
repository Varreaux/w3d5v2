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


    def BFS(root, target)
        queue = []
        
    end

    def DFS(root, target)

    end

end