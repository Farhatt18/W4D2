
module Slideable

    HORIZONTAL_AND_VERTICAL_DIRS = [
        [0,-1], #left
        [0,1], #right
        [-1,0], #up
        [1,0] #down
    ].freeze

    DIAGONAL_DIRS = [
        [-1,-1], #left/up
        [-1,1], #right/up
        [1,1], #left/down
        [1,1] #right/down
    ].freeze

    def horizonal_and_verical_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        possible_moves = []
    end

    def move_dirs
        raise NotImplementedError
    end

    def grow_unblocked_moves_in_dir(pos)
        possible_moves = []

        row = pos[0]
        col = pos[1]

        horizonal_and_verical_dirs.each do |ele|
            new_row = row + ele[0]
            new_col = col + ele[1]
            new_pos = [new_row, new_col]

            if (new_row >= 0 && new_row < 8) && (new_col >= 0 && new_col < 8)
                if new_pos.nil?
                    possible_moves << new_pos
                elsif
                    
                end
            end
        end
        possible_moves
    end





end