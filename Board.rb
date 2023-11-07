require_relative "piece"

class Board 
    def initialize
        @rows= Array.new(8){Array.new(8,nil)}
        Piece.new
        @rows[0].map! {|el| el = Piece.new}
        @rows[1].map! {|el| el = Piece.new}
        @rows[6].map! {|el| el = Piece.new}
        @rows[7].map! {|el| el = Piece.new}
    end

    def populate_piece(pos)
        
        
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
        piece = self[start_pos]

        raise "error" if start_pos.nil?

        if (end_pos.all? {|el| el >= 0 && el < 8}) && self[end_pos].nil?
            self[end_pos] = piece
        else
            raise "not valid"
        end

        self[start_pos] = nil 
    end

end