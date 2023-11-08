module Stepable


def moves
    possible_moves = []

    cur_x, cur_y = pos
    move_diffs.each do |dx,dy|
        cur_x, cur_y = cur_x + dx, cur_y + dy
        pos = cur_x, cur_y

        if valid_pos?(pos) && (pos.empty? || board[pos].color != color)
            possible_moves << pos 
        end
    end

    possible_moves
end


def move_diffs
    raise NotImplementedError
end


end