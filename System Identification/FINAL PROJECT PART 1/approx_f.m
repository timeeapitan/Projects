function [idOUT, valOUT]=approx_f(order, idx1,idx2, yid, x1val, x2val, yval, okay)
m = order;
Rid = [];
yflat = [];

% Identification Data
for i = 1:length(idx1)
    for j = 1:length(idx2)
        Rid = [ Rid ; assemblepolinom(x1(i),x2(j),m)];
        yflat = [yflat ; y(i,j)];
    end
end
 
theta = Rid\yflat;
yhatid = Rid*theta;
e = yflat-yhatid;
MSE = 1/length(e)*sum(e.^2);
idOUT = MSE;
 
% Validation Data
Rval = [];
yflatval = [];
for i = 1:length(x1val)
    for j = 1:length(x2val)
        Rval = [Rval; assemblepolinom(x1val(i), x2val(j), m)];
        yflatval = [yflatval; yval(i,j)];
    end
end
 
yhatval = Rval*theta;
e2 = yflatval-yhatval;
MSEval = 1/length(e2)*sum(e2.^2);
valOUT = MSEval;

% Plotting the data 
if okay == 1
    figure
    mesh(x1val ,x2val, yval');
    hold on
    mesh(x1val, x2val, reshape(yhatval, length(x1val), length(x2val)), 'edgecolor', 'r');
    title(['MSE=', num2str(MSEval)])
end
end


