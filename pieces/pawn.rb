require_relative 'piece'

class Pawn < Piece

    def symbol
        "♟".colorize(color)
    end

    def moves
       

        
        
    end

    def side_attack
        possible_attack = []
        cur_x, cur_y = pos 
        attack = [[1,-1],[1,1],[-1,1],[-1,-1]]
        attack.each do |dx,dy|
            cur_x, cur_y = cur_x + dx, cur_y + dy 
            cur_x, cur_y = pos 

            if valid_pos?(pos) && board[pos].color !=color
                possible_attack << pos
            end
        end

        return possible_attack
    end


end

