module five
use one
use four

contains

function fivefunc(x) result(y)
    real(8) :: x, y, y1, y2
    print *, " == five =="
    y1 = onefunc(x)
    y2 = fourfunc(x)
    y = y1 + y2
    print *, " in module five, y = ", y
end function

end module


