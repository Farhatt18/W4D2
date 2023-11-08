

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

        move_dirs.each do |dx,dy|
            move_dirs.concat(grow_unblocked_moves_in_dir(dx,dy))
        end

        possible_moves
    end

    def move_dirs
        raise NotImplementedError
    end



    def grow_unblocked_moves_in_dir(dx,dy)
        cur_x, cur_y = pos # 3, 3
        possible_moves = []

        loop do 
            cur_x, cur_y = cur_x + dx, cur_y + dy  # 3 + 0 , 3 - 1  =>  3, 2
            pos = cur_x, cur_y

            break unless valid_pos?(pos) 

            if pos.empty?
                possible_moves << pos 
            else
                if board[pos].color != color
                    possible_moves << pos
                    break
                else
                    break
                end        
            end   
        end

        possible_moves
    end

end