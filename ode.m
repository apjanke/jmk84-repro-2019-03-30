function vdot = ode(v,r)
  lambda=1;
  vdot=zeros(2,1);
  if ((v(2))<0.00000000000000000000001) or (v(1)<=0)
    vdot(1)=0;
    vdot(2)=0;
  else
    vdot(1)=v(2);
    vdot(2)=-3*v(2)/r-lambda*7.5*v(1)^4/v(2);
  endif
endfunction