implicit none
	integer::Px,Py
	integer::Qx,Qy
	read(*,*) Px,Py
	read(*,*) Qx,Qy
	write(*,'(f0.1)') dble(abs(Px-Qx)+abs(Py-Qy))/2
end
