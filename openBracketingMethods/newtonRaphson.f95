real function newtonRaphson(xGuess, tolerance)

    implicit none

    real, intent(in) :: xGuess, tolerance

    real, external :: getFunction, getDerivative
    real :: x, xPrevious, error

    integer :: iteration = 0

    write(*,*) "The Newton-Raphson Method"
    write(*,*)

    if(getFunction(xGuess) == 0) then
       newtonRaphson = xGuess
       return
    end if

    x = xGuess

    write(*,10) "|", "Iteration", "|", "Root", "|", "Error", "|"

    do while((error > tolerance) .or. (iteration <= 2))
        iteration = iteration +1

        if(getDerivative(x) == 0) then
            stop "-- Error  -- (Newton-Raphson) f'(x) = 0"
        end if

        x = x - (getFunction(x)/getDerivative(x))
        error = abs(x - xPrevious)
        xPrevious = x

        write(*,20) "|", iteration, "|", x, "|", error, "|"
    end do

    newtonRaphson = x
    write(*,*)
    10 format(a3, a10, a3, a7, a3, a7, a3)
    20 format(a3, i10, a3, f7.2, a3, f7.2, a3)

end function newtonRaphson

