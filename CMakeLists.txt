cmake_minimum_required(VERSION 3.5)


project( valentines )

enable_language(Fortran)

set( IN_DIR $ENV{PWD}/include )
set( USER $ENV{USER} )

list(APPEND CMAKE_Fortran_FLAGS "-fpp")

configure_file(${IN_DIR}/valentine.fh.in ${IN_DIR}/valentine.fh.in)

set( HEADERS ${IN_DIR}/valentine.fh )
set( SOURCES valentine.F90 )

include_directories( ${IN_DIR} )

add_executable( valentines.exe 
		${SOURCES} )








