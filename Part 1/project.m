clc;
clear;
close all;
load ('proj_fit_08')

%Identification data
idx1=id.X{1};
idx2=id.X{2};
idy=id.Y;

%Validation data
valx1=val.X{1};
valx2=val.X{2};
valy=val.Y;

%Plotting data
figure;
mesh(idx1, idx2, idy');
title('Identification data');
xlabel('x1');
ylabel('x2');
zlabel('y');

figure;
mesh(valx1,valx2,valy');
title('Validation data');
xlabel('x1');
ylabel('x2');
zlabel('y');

max_order = 12;
% Building the polynomial 
for order = 1:max_order
    display = 0;
    [MSEid(order), MSEval(order)] = approx_f(order, idx1, idx2, idy, valx1, valx2, valy, display);
end

t = 1:length(MSEid);
figure
plot(t, MSEid, 'g')
hold on
plot(t, MSEval, 'r')
hold off 
grid
xlabel('ORDER');
ylabel('MSE');
legend('MSE Id Data', 'MSE Val Data'); 

%%minimal error and its index
errmin = min(MSEval);
for order = 1 : max_order
    if(MSEval(order) == errmin)
        ideal_order = order;
    end
end

%best approximation
display = 1;
approx_f(ideal_order, idx1, idx2, idy, valx1, valx2, valy, display);