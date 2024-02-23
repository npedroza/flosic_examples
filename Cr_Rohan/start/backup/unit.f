        dimension u(3,3),r(3,6)
        open(90,file='unit.dat')
          dot1 =0.0d0
          dot2 =0.0d0
          dot12=0.0d0
        do i=1,6
        read(90,*)m,(r(j,i),j=1,3)
        end do
        do j=1,3
        u(j,2)=r(j,2)-r(j,1)
        u(j,1)=r(j,4)-r(j,3)
        dot1=dot1+u(j,1)**2
        dot2=dot2+u(j,2)**2
        end do
        do j=1,3
        u(j,1)=u(j,1)/sqrt(dot1)
        u(j,2)=u(j,2)/sqrt(dot2)
        dot12=dot12+u(j,1)*u(j,2)
        end do 
            dot1=0.0d0
            dot2=0.0d0
        do j=1,3
        dot1=dot1+u(j,1)**2
        dot2=dot2+u(j,2)**2
        end do
        print*,dot1,dot2,dot12
        u(1,3)=u(2,1)*u(3,2)-u(3,1)*u(2,2)
        u(2,3)=u(3,1)*u(1,2)-u(1,1)*u(3,2)
        u(3,3)=u(1,1)*u(2,2)-u(2,1)*u(1,2)
        do i=1,3
        do j=i,3
         dot=u(1,i)*u(1,j)+u(2,i)*u(2,j)+u(3,i)*u(3,j)
         print*,i,j,dot
        end do 
        end do 
        u(1,2)=u(2,1)*u(3,3)-u(3,1)*u(2,3)
        u(2,2)=u(3,1)*u(1,3)-u(1,1)*u(3,3)
        u(3,2)=u(1,1)*u(2,3)-u(2,1)*u(1,3)
        do i=1,3
        do j=i,3
         dot=u(1,i)*u(1,j)+u(2,i)*u(2,j)+u(3,i)*u(3,j)
                if(i.eq.j)then
                   do k=1,3
                   u(k,i)=u(k,i)/sqrt(dot)
                   end do
                end if
        end do 
        end do 
        do i=1,3
        do j=i,3
         dot=u(1,i)*u(1,j)+u(2,i)*u(2,j)+u(3,i)*u(3,j)
                if(i.eq.j)then
                   do k=1,3
                   u(k,i)=u(k,i)/sqrt(dot)
                   end do
                end if
        print*,i,j,dot
        end do 
        end do 
        close(90)
        open(90,file='radius.dat')
        do i=1,24
        read(90,*)(r(j,1),j=1,3)
              do k=1,3
              r(k,2)=0.0d0
                 do l=1,3
                 r(k,2)=r(k,2)+u(l,k)*r(l,1)
                 end do
              end do
        rr=sqrt(r(1,2)**2+r(2,2)**2+r(3,2)**2)
        print '(4F12.3)',(r(j,2),j=1,3),rr
        end do
        end
