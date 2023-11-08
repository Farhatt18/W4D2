require_relative 'piece'
require_relative 'stepable'

class Knight <  piece
    include Slideable

    
    
    def symbol
        "♞".colorize(color)
    end

    def move_diffs
        moves = [
        [2,1], [2,-1], 
        [-2,1], [-2,-1], 
        [1,2], [-1,2], 
        [1,-2],[-1,-2]
    ].freeze
    return moves
    end

end