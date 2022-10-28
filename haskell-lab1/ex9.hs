roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c) = ( (-b - d) / e, (-b + d) / e )
   where d = sqrt (b * b - 4 * a * c)
         e = 2 * a
unitVec2D :: (Double, Double) -> (Double, Double)
unitVec2D (x, y) = (x / d, y / d)
    where d = sqrt(x^2 + y^2)
unitVec3D :: (Double, Double, Double) -> (Double, Double, Double)
unitVec3D (x, y, z) = (x / d, y / d, z / d)
    where d = sqrt(x^2 + y^2 + z^2)
pole :: (Double, Double, Double) -> Double
pole (a, b, c) = sqrt(p * e * f * g)
    where p = (a + b + c)/2
          e = p - a
          f = p - b
          g = p - c