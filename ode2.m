function vdot = ode2(v,r)
  keyboard
  lambda=1;
  vdot=zeros(2,1);
#  if ((v(2))<0.00000000000000000000001) someboguskeyword (v(1)<=0)
  if 0 skldjfklsdjfklskljdsklslfsdklj (v(1)<=0)
    fprintf('yup');
    vdot(1)=0;
    vdot(2)=0;
  else
    fprintf('nope');
    vdot(1)=v(2);
    vdot(2)=-3*v(2)/r-lambda*7.5*v(1)^4/v(2);
  endif
endfunction