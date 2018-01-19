subroutine swapNumbers(number1, number2)
    implicit none

    real, intent(inout) :: number1, number2
    real :: swapper

    swapper = number1
    number1 = number2
    number2 = swapper

end subroutine swapNumbers
