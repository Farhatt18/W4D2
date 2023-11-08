require_relative "pieces/piece"

class Board 

    def initialize
        @rows= Array.new(8){Array.new(8,nil)}
        # Piece.new
    end

    def populate
        # @rows[0].map! {|el| el = Piece.new}
        @rows[1].map! {|el| el = Pawn.new(black,board)}
        # @rows[6].map! {|el| el = Pawn.new}
        # @rows[7].map! {|el| el = Piece.new}
    end

    def filter_back

    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos,val)
        row, col = pos
        @rows[row][col] = val
    end

    def valid_pos?(pos)
        @rows[pos].all? {|el| el >= 0 && el < 8}
    end
    

    def move_piece(start_pos, end_pos)
        piece = self[start_pos]

        raise "error" if start_pos.nil?

        if valid_pos?(end_pos) && self[end_pos].nil?
            self[end_pos] = piece
        else
            raise "not valid"
        end
        self[start_pos] = nil 
    end

end