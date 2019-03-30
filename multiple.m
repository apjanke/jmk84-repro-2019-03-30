warning('off','all');
v0=[100,10,1];
r=linspace(-2, -0.00001, 1000);
#lsode_options("integration method","stiff");
 
 
y=zeros(length(r), length(v0));
 
 
for i=linspace(1, length(v0), length(v0))
  ysolution=lsode("ode", [0,v0(i)], r);
  for j=linspace(1, length(r), length(r))
    y(j,i)=ysolution(j, 1);
    #y(j,2)=ysolution(j,2);
  endfor
endfor
 
 
 
plot(r, y, "linewidth", 5);
#ylim([0,4000]);
#legend(mat2str(v0(1)),mat2str(v0(2)),mat2str(v0(3)),mat2str(v0(4)),mat2str(v0(5)),mat2str(v0(6)));