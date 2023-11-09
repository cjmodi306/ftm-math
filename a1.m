clc;clear all;

function ans=func_1(x)
  ans = (x.**6) + (3*(x.**4)) - (x.**3) - (x.*5);
endfunction

function ans=func_2(x)
  ans = (3*(x.**5)) - (4*(x.**3)) + (x.*2);
endfunction

function ans=func_3(x)
  ans = (-(x.**6)) + (2*(x.**5)) - (5*(x.**2));
endfunction

function ans=func_4(x)
  ans = sind(x) + (3*exp(x*(-1))*cosd(x));
endfunction

function ans=func_5(x)
  ans = log(x.**2) - (2*cosh(pi/2));
endfunction

function ans=func_6(x)
  ans = (4/5)*(x.**4);
endfunction

x = linspace(-3,3);

f1 = func_1(x);
f2 = func_2(x);
f3 = func_3(x);
f4 = ones(size(x));
for idx=1:size(x,2);
 f4(1,idx)=func_4(x(1,idx));
endfor
f5 = func_5(x);
f6 = func_6(x);

#{
figure(1);
plot(x, f1)
figure(2);
plot(x, f2)
figure(3);
plot(x, f3)
figure(4);
plot(x, f4)
figure(5);
plot(x, f5)
figure(6);
plot(x, f6)
#}
subplot(3,2,1)
plot(x, f1)

subplot(3,2,2)
plot(x, f2)

subplot(3,2,3)
plot(x, f3)

subplot(3,2,4)
plot(x, f4)

subplot(3,2,5)
plot(x, f5)

subplot(3,2,6)
plot(x, f6)
