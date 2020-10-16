clear;clc
amp  = 1;
freq =110;
t = 0:1/freq:100;
a = amp*sind(2*pi*freq*t);

freq2 = 130;
t2 = 0:1/freq2:100;
b = amp*sind(2*pi*freq2*t2);

freq3 = 90;
t3 = 0:1/freq3:100;
c = amp*sind(2*pi*freq3*t3);



for i=1:3
if i == 1
   sound(a)
elseif i == 2
   sound(b)
elseif i == 3
   sound(c)
end
end


