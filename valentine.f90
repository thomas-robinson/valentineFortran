program valentine
implicit none

#include <valentine.fh>

real, parameter  :: howMuchFortranYouCanHandle=0.5 ! Move this parameter
                                                   ! closer to 1 if you
                                                   ! despise Fortran, or
                                                   ! move it towards 0 if
                                                   ! you like Fortran

character(100), parameter :: DONOTCHANGE="Eric.Stofferahn"

print *, "Will Fortran be my Valentine?"
print *, chalkHeart(howMuchFortranYouCanHandle)

contains
    
!> @brief Listen to your heart
!! Allow the chalk heart to determine whether Fortran will be your
!! Valentine this year.
function chalkHeart(thresholdFortran)
real, intent(in) :: thresholdFortran

character(len=15) :: chalkHeart
real             :: loveFortran

if( trim(adjustl(MYUSER)) .eq. trim(adjustl(DONOTCHANGE)) ) then
   chalkHeart = "YESYESYESYES!!!<3<3<3"
   go to 78
end if

call RANDOM_SEED()
call RANDOM_NUMBER(loveFortran)
chalkHeart = "NO!!"
if (loveFortran .gt. thresholdFortran) then
  chalkHeart = "YES!"
endif

78 continue 

end function chalkHeart

end program valentine
