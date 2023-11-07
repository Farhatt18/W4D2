require_relative "piece"

class Board 
    def initialize
        @rows= Array.new(8){Array.new(8,nil)}
        Piece.new

    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos,val)
        row, col = pos
        @rows[row][col] = val
    end

    def move_piece(start_pos, end_pos)


    end

end