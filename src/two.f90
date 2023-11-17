module two
use four

implicit none

contains

function twofunc(x) result(y)
    real(8) :: x,y
    print *, "== two =="
    y = fourfunc(x)
end function

end module

