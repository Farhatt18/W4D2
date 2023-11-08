require_relative 'piece'
require_relative 'stepable'

class King < Piece
    include Stepable

    def symbol
        "♚".colorize(color)
    end

    def move_diffs
        moves = [[0,1],[-1,1],[-1,0],[-1,-1],[0,-1],[1,-1],[1,0],[1,1]].freeze
        return moves
    end


end