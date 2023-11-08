require_relative 'piece'

class NullPiece < Piece
    include Singleton

    def initialize
        @color = :none
        @moves =[]
        @symbol= ""
    end

    def empty
        @empty
    end
end