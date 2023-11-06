function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = McCandless_2008_Chapter_13.static_g1_tt(T, y, x, params);
end
g1 = zeros(16, 16);
g1(1,3)=(-((-(y(13)*y(7)))/(y(7)*y(3)*y(7)*y(3))-(-(y(7)*(1+y(12))*y(13)*params(1)))/(y(7)*y(3)*y(7)*y(3))));
g1(1,7)=(-((-(y(13)*y(3)))/(y(7)*y(3)*y(7)*y(3))-(-(y(3)*(1+y(12))*y(13)*params(1)))/(y(7)*y(3)*y(7)*y(3))));
g1(1,12)=y(13)*params(1)/(y(7)*y(3));
g1(1,13)=(-(1/(y(7)*y(3))-params(1)*(1+y(12))/(y(7)*y(3))));
g1(2,2)=T(1);
g1(2,3)=(-((-(y(7)*y(7)))/(y(7)*y(3)*y(7)*y(3))-(y(2)+1-params(2))*(-(y(7)*y(7)*params(1)))/(y(7)*y(3)*y(7)*y(3))));
g1(2,7)=T(8);
g1(3,1)=(-((-params(6))/(y(1)*y(1))));
g1(3,3)=(-((-(y(7)*y(7)*params(1)))/(y(7)*y(3)*y(7)*y(3))));
g1(3,7)=(-((y(7)*y(3)*params(1)-y(3)*y(7)*params(1))/(y(7)*y(3)*y(7)*y(3))));
g1(4,3)=(-y(7));
g1(4,6)=1;
g1(4,7)=(-y(3));
g1(5,1)=y(5);
g1(5,2)=y(4);
g1(5,4)=(-(1-y(2)-(1-params(2))));
g1(5,5)=y(1);
g1(5,6)=(-(1/y(7)));
g1(5,7)=(-((-y(6))/(y(7)*y(7))+(-(y(13)*y(11)))/(y(7)*y(7))-(-(y(11)*y(13)*(1+y(12))))/(y(7)*y(7))));
g1(5,11)=(-(y(13)/y(7)-y(13)*(1+y(12))/y(7)));
g1(5,12)=y(13)*y(11)/y(7);
g1(5,13)=(-(y(11)/y(7)-y(11)*(1+y(12))/y(7)));
g1(6,1)=(-1);
g1(6,4)=T(4)*(1-params(3))*y(10)*getPowerDeriv(y(4),params(3),1);
g1(6,5)=T(3)*getPowerDeriv(y(5),(-params(3)),1);
g1(6,10)=T(4)*(1-params(3))*T(2);
g1(7,2)=(-1);
g1(7,4)=T(7)*params(3)*y(10)*getPowerDeriv(y(4),params(3)-1,1);
g1(7,5)=T(6)*getPowerDeriv(y(5),1-params(3),1);
g1(7,10)=T(7)*params(3)*T(5);
g1(8,8)=y(14);
g1(8,11)=(-(1-(1+y(12))));
g1(8,12)=y(11);
g1(8,14)=y(8);
g1(9,8)=(-((-(y(11)*params(5)))/(y(8)*y(8))));
g1(9,11)=(-(params(5)/y(8)));
g1(9,12)=(-1);
g1(10,7)=1/y(8);
g1(10,8)=(-y(7))/(y(8)*y(8));
g1(10,13)=(-1);
g1(11,6)=(-(1-y(9)));
g1(11,9)=y(6);
g1(12,10)=1-params(7);
g1(13,9)=1-params(8);
g1(14,8)=1-params(9);
g1(15,3)=(-((-(y(7)*(1+y(12))*y(13)*params(1)))/(y(7)*y(3)*y(7)*y(3))));
g1(15,7)=(-((-(y(3)*(1+y(12))*y(13)*params(1)))/(y(7)*y(3)*y(7)*y(3))));
g1(15,12)=(-(y(13)*params(1)/(y(7)*y(3))));
g1(15,13)=(-(params(1)*(1+y(12))/(y(7)*y(3))));
g1(15,15)=1;
g1(16,2)=(-T(1));
g1(16,3)=(-((y(2)+1-params(2))*(-(y(7)*y(7)*params(1)))/(y(7)*y(3)*y(7)*y(3))));
g1(16,7)=(-T(8));
g1(16,16)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
