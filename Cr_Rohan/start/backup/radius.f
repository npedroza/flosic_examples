       open(90,file='radius')
       do i=1,24
       read(90,*)x,y,z
          if(i.eq.4)xo=x
          if(i.eq.4)yo=y
          if(i.eq.4)zo=z
       end do
       rewind(90)
       do i=1,24
       read(90,*)x,y,z
              x=x-xo
              y=y-yo
              z=z-zo
                  m=8
       if(i.le.12)m=7
       print'(I3,4f12.6)',m,x,y,z,sqrt(x*x+y*y+z*z)
       end do
       end
