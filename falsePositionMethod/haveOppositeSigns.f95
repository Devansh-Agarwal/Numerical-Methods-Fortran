logical function haveOppositeSigns(number1, number2)
    implicit none

    real, intent(in) :: number1 , number2
    haveOppositeSigns = .false.
    if((number1 * number2) < 0)then
        haveOppositeSigns = .true.
     end if

end function haveOppositeSigns
