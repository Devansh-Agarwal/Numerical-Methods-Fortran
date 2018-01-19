real function getFunction(x)
    implicit none

    real,intent(in):: x

    getFunction = (3 * x) + sin(x) - exp(x)
end function getFunction
