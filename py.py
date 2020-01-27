# Python3 code to find sum of Manhattan 
# distances between all the pairs of 
# given points 
  
# Return the sum of distance of one axis. 
def distancesum (arr, n): 
      
    # sorting the array. 
    arr.sort() 
      
    # for each point, finding  
    # the distance. 
    res = 0
    sum = 0
    for i in range(n): 
        res += (arr[i] * i - sum) 
        sum += arr[i] 
      
    return res 
      
def totaldistancesum( x , y , n ): 
    return distancesum(x, n) + distancesum(y, n) 
      
# Driven Code 
x = [ 0, 1 ] 
y = [ 0, 6 ] 
n = len(x) 
print(totaldistancesum(x, y, n) ) 
  
# This code is contributed by "Sharad_Bhardwaj". 