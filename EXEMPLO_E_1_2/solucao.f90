! =========================================================
module solucao
  use constantes
  use integrador_rk4
  use problema
  implicit none
contains
  subroutine salvar_sol(lambda,idx)
    real(8),intent(in):: lambda
    integer,intent(in):: idx
    integer:: i
    real(8):: y(2),x,h, norm
    character(len=32):: fname
    write(fname,'(A,I0,A)') 'solucao_autovalor_',idx-1,'.dat'
    open(unit=20,file=fname,status='replace')
    x=a; h=(b-a)/real(passos,8)
    norm = sqrt(alpha*alpha + beta*beta)
    y(1) = -beta  / norm
    y(2) =  alpha / norm * p(a)
    do i=0,passos
      write(20,'(F10.6,1X,F12.6)') x,y(1)
      if (i<passos) call passo_rk4(x,y,h,lambda)
    end do
    close(20)
  end subroutine salvar_sol
end module solucao



! =========================================================
