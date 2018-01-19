program mainOpenMethods

    implicit none

    real,external :: fixedPointIteration
    real,external :: newtonRaphson
    real,external :: secantMethod

    real :: xGuess, xGuess1, xGuess2
    real, parameter :: tolerance = 1.0e-5
    real :: rootFP, rootNR, rootSM

    write(*,*) "Root-finding (Open Methods)"

    xGuess = 0.0
    rootFP = fixedPointIteration(xGuess, tolerance)

    xGuess = 0.0
    rootNR =  newtonRaphson(xGuess, tolerance)

    xGuess1 = 0.0
    xGuess2 = 1.0
    rootSM = secantMethod(xGuess1, xGuess2, tolerance)

    write(*,10) "Root by fixed-point iteration method = ", rootFP
    write(*,10) "Root by Newton Raphson method = ", rootNR
    write(*,10) "Root by Secant method = ", rootSM

    10 format(a39, f9.4)

end program mainOpenMethods
