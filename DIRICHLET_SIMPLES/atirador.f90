! =========================================================
module atirador
  use constantes
  use problema
  use integrador_rk4
  implicit none
contains
  subroutine shoot(lam,F,nodes)
    real(8),intent(in) :: lam
    real(8),intent(out):: F
    integer,intent(out):: nodes
    real(8):: y(2),x,h,yprev,v,norm
    integer:: i

    ! BC genérica: u(a)=β , u'(a)=−α
    x    = a
    norm  = sqrt(alpha*alpha + beta*beta)
    y(1)  = -beta  / norm
    y(2)  =  alpha / norm * p(a)   ! p(a)·u'(a)
    h    = (b-a)/real(passos,8)
    nodes= 0
    yprev= y(1)

    do i=1,passos
      call passo_rk4(x,y,h,lam)
      if (y(1)*yprev < 0.d0) nodes=nodes+1
      yprev = y(1)
    end do

    v = y(2)/p(b)
    F = gamma*y(1) + delta*v
  end subroutine shoot
end module atirador


! =========================================================
