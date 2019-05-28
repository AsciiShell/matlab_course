open_system('task1')
b=0;
x=zeros(1,201);
y=zeros(1,201);
z=zeros(1,201);
seed=randi(999999);    
for a=-5:0.05:5
  snr=a;
  b=b+1;
    for c=1:20
    set_param(task1, 'startTime', '0', 'stopTime', '1500');
    seed=randi(99999);
    sim('task1');   
    x(1,b)=a;
    y(1,b)=y(1,b)+0.05*BER(1);
    end

  
end

plot(x,y,'r');
legend('BER(Eb/E0)');
xlabel('dB');
ylabel('BER');
