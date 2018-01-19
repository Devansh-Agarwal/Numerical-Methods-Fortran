subroutine printMatrix2D(matrix, rows, columns)
implicit none
integer, intent(in) :: rows, columns
real, dimension(rows, columns), intent(in) :: matrix
integer :: rowCounter, columnCounter
do rowCounter = 1, rows
do columnCounter = 1, columns
write(*,10, advance='no') matrix(rowCounter, columnCounter)
end do
write(*,*)
end do
write(*,*)
10 format(f7.2)
end subroutine printMatrix2D
