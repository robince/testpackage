subroutine bincount (x,c,n,m)
    implicit none
    integer*4, intent(in) :: n,m
    integer*4, dimension(0:n-1), intent(in) :: x
    integer*4, dimension(0:m-1), intent(out) :: c
    integer*4 :: i

    c = 0
    do i = 0, n-1
        c(x(i)) = c(x(i)) + 1 
    end do
end

