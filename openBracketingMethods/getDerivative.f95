real function getDerivative(x)
    implicit none

    real, intent(in) :: x

    getDerivative = 3 + cos(x)-sin(x)

end function getDerivative
