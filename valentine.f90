program valentine
implicit none

real :: howMuchFortranYouCanHandle=0.5 ! Move this parameter
                                                   ! closer to 1 if you
                                                   ! despise Fortran, or
                                                   ! move it towards 0 if
                                                   ! you like Fortran

print *, "Will Fortran be my Valentine?"
print *, "Enter a value closer to 1 if you despise Fortran, or move it towards 0 if you like Fortran"
read(5,*) howMuchFortranYouCanHandle

print *, chalkHeart(howMuchFortranYouCanHandle)

contains
    
!> @brief Listen to your heart
!! Allow the chalk heart to determine whether Fortran will be your
!! Valentine this year.
function chalkHeart(thresholdFortran)
real, intent(in) :: thresholdFortran

character(len=4) :: chalkHeart
real             :: loveFortran

call RANDOM_SEED()
call RANDOM_NUMBER(loveFortran)
chalkHeart = "NO!!"
if (loveFortran .gt. thresholdFortran) then
  chalkHeart = "YES!"
endif
end function chalkHeart

end program valentine
