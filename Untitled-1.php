<?php 
// PHP Program to find sum 
// of Manhattan distance  
// between all the pairs  
// of given points 
  
// Return the sum of distance 
// between all the pair of points. 
function distancesum( $x, $y, $n) 
{ 
    $sum = 0; 
  
    // for each point, finding  
    // distance to rest of  
    // the point 
    for($i = 0; $i < $n; $i++) 
        for ($j = $i + 1; $j < $n; $j++) 
            $sum += (abs($x[$i] - $x[$j]) + 
                     abs($y[$i] - $y[$j])); 
    return $sum; 
} 
  
    // Driver Code 
    $x = array(-1, 1, 3, 2); 
    $y = array(5, 6, 5, 3); 
    $n = count($x); 
    echo distancesum($x, $y, $n); 
      
// This code is contributed by anuj_67. 
?> 