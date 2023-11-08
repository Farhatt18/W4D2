require_relative 'piece'
require_relative 'stepable'

class Knight
    include Slideable

    MOVES = [
        [2,1], [2,-1], 
        [-2,1], [-2,-1], 
        [1,2], [-1,2], 
        [1,-2],[-1,-2]
    ]
    
    def symbol

    end

    def move_dirs

    end

end