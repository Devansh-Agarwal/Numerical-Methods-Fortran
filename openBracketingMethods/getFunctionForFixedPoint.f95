real         function getFunctionForFixedPoint(x)
    implicit none

    real, intent(in) :: x

    getFunctionForFixedPoint = (exp(x) - sin(x))/3

end function getFunctionForFixedPoint
