program main
    implicit none

    real,external ::getRootWithBisection
    real :: xLow,xHigh,root
    real, parameter ::  tolerance = 1.0e-5

    xLow = 2.0
    xHigh = 1.0
    root = getRootWithBisection(xLow,Xhigh,tolerance)

    write(*,20)"Root with Bisection = ", root
    20 format(a22,f9.4)

end program main
