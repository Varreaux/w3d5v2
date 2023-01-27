class PolyTreeNode

attr_reader :value, :parent, :children

    def initialize(value = nil)

        @value = value
        @parent = nil
        @children = []
    end


    def parent=(new_parent)


        # @parent = parent 
        # parent.children << self unless self.parent.nil




        # if new_parent 
        #     new_parent 

        new_parent.children << self unless new_parent.nil?
        @parent = new_parent 

        return self
    end


    def remove_child(child)
        if child && !self.children.include?(child)
            raise 'not the child!'
        end
        child.parent = nil
    end
        



end