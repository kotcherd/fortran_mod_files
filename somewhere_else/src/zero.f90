module zero

contains

function zerofunc(x) result(y)
    real(8) :: x,y
    y = x
    print *, " == "
    print *, " == we are at module zero "
    print *, " == "
end function zerofunc

end module zero


