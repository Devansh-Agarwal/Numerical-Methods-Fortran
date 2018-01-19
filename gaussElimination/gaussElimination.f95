subroutine gaussElimination(aIn, n, x)
    implicit none

    integer, intent(in) :: n
    real, dimension(n, n+1), intent(in) :: aIn
    real, dimension(n), intent(out) :: x

    real, dimension(n, n+1) :: a

    integer :: stepCount, rowCount, columnCount
    integer :: row, columns

    integer :: pivotRow, pivot Column
    real :: factor

    a = aIn
    rows = n
    columns = n + 1
    write(*,*) "The Augmented Matrix"

    call printMatrix2D(a, rows, columns)

    do stepCount = 1, (columns - 2)
        pivotRow = stepCount
        pivotColumn = stepCount
        pivot = a(pivotRow, pivotColumn)

        do rowCount = (pivotRow + 1), rows
            factor = a(rowCount, pivotColumn) / pivot
            do columnCount = pivotColumn, columns
    end do
end subroutine gaussElimination
