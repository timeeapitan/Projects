clear,clc
load iddata-08.mat
yid=id.y;
uid=id.u;
plot(id)
Nid=length(yid);
PHIid=finalPolynomial(3,3,1,2,yid,uid,Nid)
theta=PHIid\yid;

yval=val.y;
uval=val.u;
Nval=length(yval);
PHIval=finalPolynomial(3,3,1,2,yval,uval,Nval)

ypred=PHIval*theta;

%%
plot(yval)
hold on
plot(yid)
hold
plot(ypred)