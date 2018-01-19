real function getRootWithBisection(xLow,xHigh,tolerance)
    implicit none

    real, external ::  getFunction
    logical, external :: haveOppositeSigns

    real,intent(in) :: tolerance
    real,intent(inout) :: xLow, xHigh

    real :: error
    integer :: iteration
    real :: fLow,fHigh
    real :: xMid,fMid

    write(*,*)
    write(*,*)"Bisection Method"
    write(*,*)

    if(xLow>xHigh) then
        write(*,*) "The lower bound is greater than the upper bound. Swapping"
        write(*,*)
        call swapNumbers(xLow,xHigh)
    end if

    fLow = getFunction(xLow)
    fHigh = getFunction(xHigh)

    if(fLow == 0 ) then
        write(*,*) "The initial guess for xLow is the exact root."
        write(*,*)
        getRootWithBisection =fLow
        return
    end if

    if(fHigh == 0 ) then
        write(*,*) "The initial guess for xHigh is the exact root."
        write(*,*)
        getRootWithBisection =xHigh
        return
    end if

    if(haveOppositeSigns(fLow,fHigh) .eqv. .false.) then
        stop "Bisection Method: Bounds don't bracket the root"
    end if

    error = abs((xHigh -xLow)/2)
    iteration = 0
    write(*,10) " | ", "No.", " | ", "xLow", " | ", "xHigh", " | ", "fLow", " | ","xMid", " | ", "fMid", " | ", "Error", " | "
    do while(error>tolerance)
       iteration = iteration +1
       xMid = (xHigh+xLow)/2
       fMid = getFunction(xMid)

       write(*,20) " | ", iteration, " | ", xLow, " | ", xHigh, " | ", fLow, " | ",xMid, " | ", fMid, " | ", error, " | "

       if(haveOppositeSigns(fLow,fMid)) then
            xHigh = xMid
            fHigh = fMid
       else if(haveOppositeSigns(fHigh,fMid)) then
            xLow = xMid
            fLow = fMid
       else
            write(*,*)"Exact Root Found"
            write(*,*)
            exit
       end if
       error = abs((xHigh -xLow)/2)
    end do
    write(*,*)
    write(*,*) "Error (Bisection) = ", error
    write(*,*)
    10 format(a3, a4, a3, a7, a3, a7, a3, a7, a3, a7, a3, a7, a3, a7, a3)
    20 format(a3, i4, a3, f7.2, a3, f7.2, a3, f7.2, a3, f7.2, a3, f7.2, a3, f7.2, a3)
    getRootWithBisection = xMid
end function getRootWithBisection
