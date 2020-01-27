


def distmath(coords)
    coords.sort
    result = 0
    sum = 0
    i = 0
    while i < coords.length
        result += coords[i] * i - sum
        sum += coords[i]
        i += 1
    end
    return result
end

def totaldist( x , y  )
    dstartx = distmath(x).to_i
    dstarty = distmath(y).to_i 
    dstart = dstarty + dstartx
    p dstart
    end

x = [ 0, -1 ] 
y = [ 0, 26 ]
totaldist(x, y)
