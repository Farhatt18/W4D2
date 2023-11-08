require_relative 'piece'
require_relative 'slidable'

class Rook < Piece
    include Slideable

    def symbol
        "♜".colorize(color)
    end

    def move_dirs
        horizonal_and_verical_dirs
    end
end