module four
use three

implicit none

contains

function fourfunc(x) result(y)
    real(8) :: x,y
    print *, " four =="
    y = threefunc(x) 
end function

end module

