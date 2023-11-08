require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
    include Slideable

    def symbol
        "♕".colorize(color)
    end

    def move_dirs
        horizonal_and_verical_dirs + diagonal_dirs
    end

end