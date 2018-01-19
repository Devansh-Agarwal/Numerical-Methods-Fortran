real function getRootWithFalsePosition(xLow, xHigh, tolerance)
    implicit none

    real, external :: getFunction
    logical, external :: haveOppositeSigns

    real, intent(inout) :: xLow, xHigh
    real, intent(in) :: tolerance

    real :: fLow, fHigh
    real :: xIntercept, fIntercept
    real :: xInterceptPrevious = 0.0
    real :: error
    integer :: iteration = 0

    write(*,*)
    write(*,*) "False Position Method"
    write(*,*)

    if(xLow > xHigh) then
        write(*,*) "The lower bound is greater than the upper bound. Swapping..."
        write(*,*)
        call swapNumbers(xLow, xHigh)
    end if
    fLow = getFunction(xLow)
    fHigh = getFunction(xHigh)

    if(fLow == 0) then
        write(*,*) "The initial guess for xLow is the exact root."
        write(*,*)
        getRootWithFalsePosition = xLow
        return
    end if

    if(fHigh == 0) then
        write(*,*) "The initial guess for xHigh is the exact root."
        write(*,*)
        getRootWithFalsePosition = xHigh
        return
    end if

    if(haveOppositeSigns(fLow, fHigh) .eqv. .false.) then
        stop "Error (False Position): Initial guesses don't bracket the root."
    end if

    write(*,10) "|", "No.", "|", "xLow", "|", "xHigh", "|", "xIntercept", "|"
    do while((error > tolerance) .or. (iteration <= 2))
        iteration = iteration + 1
        xIntercept = xHigh - (fHigh * ((xHigh - xLow) / (fHigh - fLow)))
        fIntercept = getFunction(xIntercept)

        write(*,20) "|", iteration, "|", xLow, "|", xHigh, "|", xIntercept, "|"

        if(haveOppositeSigns(fLow, fIntercept)) then
        xHigh = xIntercept
        fHigh = fIntercept
        else if(haveOppositeSigns(fHigh, fIntercept)) then
        xLow = xIntercept
        fLow = fIntercept
        else
        write(*,*) "Exact Root Found"
        write(*,*)
        exit
        end if

        error = abs(xIntercept - xInterceptPrevious)
        xInterceptPrevious = xIntercept
    end do
    write(*,*)
    write(*,*) "Error (False Position) = ", error
    write(*,*)
    10 format(a3, a10, a3, a10, a3, a10, a3, a10, a3)
    20 format(a3, i10, a3, f10.4, a3, f10.4, a3, f10.4, a3)
    getRootWithFalsePosition = xIntercept
end function getRootWithFalsePosition
