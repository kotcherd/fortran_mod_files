module three
use zero

contains

function threefunc(x) result(y)
    real(8) :: x,y,y1,y2
    y1 = zerofunc(x)
    print *, " == three =="
    y  = zerofunc(y1)
end function

end module


