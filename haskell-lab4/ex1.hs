polarToCartesian :: Floating a => (a,a) -> (a,a)
polarToCartesian (r,phi) = (r*cos phi, r * sin phi)

type CartesianCoord' a = (a,a)
type PolarCoord' a = (a,a)
polarToCartesian' :: Floating a => PolarCoord' a -> CartesianCoord' a
polarToCartesian' (r,phi) = (r*cos phi, r * sin phi)
--type tworzy tylko alias więc nie działa jak byśmy chcieli

newtype CartesianCoord'' a = MkCartesianCoord'' (a,a)
newtype PolarCoord'' a = MkPolarCoord'' (a,a)

polarToCartesian'' :: Floating a => PolarCoord'' a -> CartesianCoord'' a
polarToCartesian'' (MkPolarCoord'' (r,phi)) = MkCartesianCoord'' (r*cos phi, r * sin phi)
--tutaj już ok
--let MkCartesianCoord'' (x1,y1) = polarToCartesian'' $ MkPolarCoord'' (1, pi/4)


