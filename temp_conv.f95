program temp_conv
  implicit none

  !declaring variables
  real, dimension(1:10) :: Celsius, Kelvin
  integer :: i

  !opening file for reading
  open(10, file='Air-Temperature.csv', status='old', action='read')

  !iterating through dataset
  do i = 1, 10, 1
    read(10,*) Celsius(i)
    Kelvin = Celsius + 273.15
  end do

  close(10)

  !printing output in terminal after compiling
  print*, Kelvin

  !opening new file to save output
  open(unit=10, file='Air-Temperature-Conversion.csv', status='new', action='write')
    write(10,'(I5,2X,F8.2)') Kelvin
  close(10)


end program temp_conv
