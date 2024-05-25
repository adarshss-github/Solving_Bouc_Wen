ug = zeros(37475,1) ;
k = 0 ;

for i = 1:1:9376
for j = 1:1:5
    
    k = k+1 ;
    ug(k,1) = Untitled(i,j) ;



end
end

dt = 1/200 ;

tt = (0:1:46842)*dt ;

plot(t,ug)
ugt = ug ;
ug = ugt(1:13868) ;
t = (0:1:13867)*dt ;
save('Data')
Ug = ug*9.81 ;

gt = t ;

xgt = Ug ;


[t, y] = ode45(@(t,y)funBoucWen(t,y, gt, xgt), gt, [1 -2 0]);
F = 9.81*y(:,3) ;
plot(y(:,1),F)

 [t,y] = rk4(@(y,f)funBoucWenrk4(y,f),t',1/200,xgt',[1 -2 0]) ;

 [t1, y1] = ode45(@(t,y)funBoucWen(t,y, gt, xgt), gt, [1 -2 0]);

 F = 9.81*y(3,:) ;
  F1 = 9.81*y1(:,3) ;