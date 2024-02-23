         dimension r(4,18)
         open(90,file='BEST_FRMIDT')
         read(90,*)nup,ndn
         do  i=1,nup
         print*,iup,nup
         read(90,*)(r(j,i),j=1,3)
           r(4,i)=sqrt(r(1,i)**2+r(2,i)**2+r(3,i)**2)
           print*,r(4,i) 
         end do
         ravg=(r(4,2)+r(4,3)+r(4,4)+r(4,5))/4.0d0
         do i=2,5
         do j=1,3
         r(j,i)=r(j,i)*ravg/r(4,i)
         end do
         end do
         ravg=(r(4,15)+r(4,16)+r(4,17)+r(4,18))/4.0d0
         do i=15,18
         do j=1,3
         r(j,i)=r(j,i)*ravg/r(4,i)
         end do
         end do
         ravg=(r( 4,6)+r(4,7)+r(4,8)+r(4,9)
     &       + r( 4,10)+r(4,11)+r(4,12)+r(4,13)+r(4,14))/9
         do i=6,14
         do j=1,3
         r(j,i)=r(j,i)*ravg/r(4,i)
         end do
         end do
         sign=1.0d0
         do is=1,2
           do i=1,18
           r(4,i)=sqrt(r(1,i)**2+r(2,i)**2+r(3,i)**2)
           print '(4F15.6)',(sign*r(j,i),j=1,4)
           end do
           sign=-sign
         end do
         end 
  
