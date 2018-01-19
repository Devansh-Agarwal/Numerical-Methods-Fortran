program main
    implicit none
    real,external::getRootWithFalsePosition

    real, parameter :: tolerance = 1.0e-5
    real :: xLow,xHigh,root

    xLow = 2.0
    xHigh =1.0
    root = getRootWithFalsePosition(xLow,xHigh,tolerance)

    write(*,20) "Root with False Position = ", root
    20 format(a27, f9.4)

end program main
