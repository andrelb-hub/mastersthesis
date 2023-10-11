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
    T = REG_MODEL.static_g1_tt(T, y, x, params);
end
g1 = zeros(31, 31);
g1(1,27)=1;
g1(2,28)=1;
g1(3,27)=1-params(2);
g1(3,29)=(-((1-params(7))*(1-params(2)*params(7))/params(7)));
g1(4,28)=1-params(2);
g1(4,30)=(-((1-params(7))*(1-params(2)*params(7))/params(7)));
g1(5,9)=1-(1-params(6));
g1(5,14)=(-params(6));
g1(6,10)=1-(1-params(6));
g1(6,15)=(-params(6));
g1(7,3)=1;
g1(7,5)=(-1);
g1(7,21)=1;
g1(7,22)=(-1);
g1(8,4)=1;
g1(8,6)=(-1);
g1(8,21)=1;
g1(8,22)=(-1);
g1(9,1)=(-1);
g1(9,18)=1;
g1(9,21)=(-params(15));
g1(9,22)=(-(1-params(15)));
g1(10,2)=(-1);
g1(10,19)=1;
g1(10,21)=(-params(16));
g1(10,22)=(-(1-params(16)));
g1(11,1)=(-(1-params(11)));
g1(11,7)=params(13);
g1(11,18)=1;
g1(11,25)=(-1);
g1(12,2)=(-(1-params(11)));
g1(12,8)=params(13);
g1(12,19)=1;
g1(12,25)=(-1);
g1(13,23)=(-(1-params(2)));
g1(14,23)=(-(1-params(2)));
g1(15,21)=T(17);
g1(15,24)=(-T(17));
g1(16,22)=T(17);
g1(16,24)=(-T(17));
g1(17,7)=(-(1-params(1)));
g1(17,9)=(-params(1));
g1(17,12)=1;
g1(17,16)=(-1);
g1(18,8)=(-(1-params(1)));
g1(18,10)=(-params(1));
g1(18,13)=1;
g1(18,17)=(-1);
g1(19,7)=(-1);
g1(19,9)=1;
g1(19,24)=1;
g1(19,25)=(-1);
g1(20,8)=(-1);
g1(20,10)=1;
g1(20,24)=1;
g1(20,25)=(-1);
g1(21,16)=1;
g1(21,21)=1;
g1(21,24)=(-params(1));
g1(21,25)=(-(1-params(1)));
g1(21,29)=1;
g1(22,17)=1;
g1(22,22)=1;
g1(22,24)=(-params(1));
g1(22,25)=(-(1-params(1)));
g1(22,30)=1;
g1(23,11)=(-((1-params(3))*params(5)));
g1(23,23)=1-params(3);
g1(23,26)=(-((1-params(3))*params(4)));
g1(23,31)=(-1);
g1(24,26)=1;
g1(25,20)=1;
g1(25,21)=(-T(14));
g1(25,22)=(-(1-T(14)));
g1(26,11)=1;
g1(26,12)=(-T(14));
g1(26,13)=(-(1-T(14)));
g1(27,3)=(-T(15));
g1(27,5)=(-T(16));
g1(27,12)=1;
g1(27,14)=(-(1-T(15)-T(16)));
g1(28,4)=(-((1-params(15))*T(12)/T(11)));
g1(28,6)=(-((1-params(16))*T(13)/T(11)));
g1(28,13)=1;
g1(28,15)=(-T(18));
g1(29,16)=1-params(8);
g1(30,17)=1-params(9);
g1(31,31)=1-params(10);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
