move = "r6r2r7l7"

move.scan(/[a-zA-Z]\d/) do |i|
    case
        when i.match(/[l|L]\d/) 
          p "left"
          p i[1]
        when i.match(/[r|R]\d/)
        p "right"
        p i[1]
        end
    end