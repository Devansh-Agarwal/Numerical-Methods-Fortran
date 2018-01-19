real function secantMethod(xGuessOne, xGuessTwo, tolerance)

    implicit none

    real, external :: getFunction
    real, intent(in) :: xGuessOne, xGuessTwo, tolerance

    real :: xOne, xTwo, xThree, xThreePrevious, fOne, fTwo, fThree, slope, error

    integer :: iteration = 0

    write(*,*) "The Secant Method"
    write(*,*)
    if(getFunction(xGuessOne) == 0) then
        secantMethod = xGuessOne
        return
    end if

    if(getFunction(xGuessTwo) == 0) then
        secantMethod = xGuessTwo
        return
    end if

    if(xOne == xTwo) then
        stop "-- Error -- (Secant Method) The two guesses for x should not be thesame."
    end if

    xOne = xGuessOne
    xTwo = xGuessTwo

    fOne = getFunction(xOne)
    fTwo = getFunction(xTwo)

    write(*,10) "|", "Iteration", "|", "xOne", "|", "xTwo", "|", "Root", "|","Error", "|"

    do while((error > tolerance) .or. (iteration <=2))
        iteration = iteration + 1

        slope = (fOne - fTwo) / (xOne - xTwo)
        xThree = xTwo - (fTwo/slope)

        fThree = getFunction(xThree)

        xOne = xTwo
        fOne = fTwo

        xTwo = xThree
        fTwo = fThree

        error = abs(xThree - xThreePrevious)
        xThreePrevious = xThree
        write(*,20) "|", iteration, "|", xOne, "|", xTwo, "|", xThree, "|", error,"|"
    end do

    secantMethod = xThree

    write(*,*)
    10 format(a3, a10, a3, a7, a3, a7, a3, a7, a3, a7, a3)
    20 format(a3, i10, a3, f7.2, a3, f7.2, a3, f7.2, a3, f7.2, a3)

end function secantMethod
