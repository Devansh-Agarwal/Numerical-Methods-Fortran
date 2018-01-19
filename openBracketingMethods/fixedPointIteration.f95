real function fixedPointIteration(xGuess, tolerance)
    implicit none

    real, external :: getFunctionForFixedPoint

    real, intent(in) :: xGuess
    real, intent(in) :: tolerance

    real :: x, xPrevious, error

    integer :: iteration = 0

    write(*,*) "The Fixed-Point Iteration Method"
    write(*,*)

    if(getFunctionForFixedPoint(xGuess) == xGuess) then
        fixedPointIteration = xGuess
        return
    end if

    x = xGuess

    write(*,10) "|", "Iteration", "|", "Root", "|", "error", "|"

    do while((error > tolerance) .or. (iteration <= 2))
        iteration = iteration + 1

        write(*,20) "|", iteration, "|", x, "|", error, "|"
        x = getFunctionForFixedPoint(x)
        error = abs(x - xPrevious)
        xPrevious = x
    end do

    fixedPointIteration = x

    write(*,*)
    10 format(a3, a9, a3, a9, a3, a9, a3)
    20 format(a3, i9, a3, f9.4, a3, f9.4, a3)

end function fixedPointIteration

