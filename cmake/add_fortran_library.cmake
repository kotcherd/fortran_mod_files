# If you now use add_fortran_library() instead of add_library() 
#   you don't have to care about the modules anymore.


function(add_fortran_library LIB)
    add_library(${LIB} ${ARGN})

    # set module path to LIB_DIR/mod
    get_target_property(LIB_DIR ${LIB} BINARY_DIR)
    set_target_properties(${LIB} PROPERTIES Fortran_MODULE_DIRECTORY ${LIB_DIR}/mod)

    # making LIB_DIR/mod available for libraries linking LIB 
    target_include_directories(${LIB} INTERFACE ${LIB_DIR}/mod)
endfunction(add_fortran_library)

