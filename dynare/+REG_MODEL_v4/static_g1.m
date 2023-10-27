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
    T = REG_MODEL_v4.static_g1_tt(T, y, x, params);
end
g1 = zeros(32, 32);
g1(1,28)=1;
g1(2,29)=1;
g1(3,28)=1-params(3);
g1(3,30)=(-((1-params(8))*(1-params(3)*params(8))/params(8)));
g1(4,29)=1-params(3);
g1(4,31)=(-((1-params(8))*(1-params(3)*params(8))/params(8)));
g1(5,9)=1-(1-params(7));
g1(5,14)=(-params(7));
g1(6,10)=1-(1-params(7));
g1(6,15)=(-params(7));
g1(7,1)=1;
g1(7,3)=(-params(16));
g1(7,5)=(-(1-params(16)));
g1(8,2)=1;
g1(8,4)=(-params(17));
g1(8,6)=(-(1-params(17)));
g1(9,3)=1;
g1(9,4)=1;
g1(9,5)=(-1);
g1(9,6)=(-1);
g1(10,18)=1;
g1(10,21)=(-params(16));
g1(10,22)=(-(1-params(16)));
g1(11,19)=1;
g1(11,21)=(-params(17));
g1(11,22)=(-(1-params(17)));
g1(12,1)=params(12);
g1(12,7)=params(14);
g1(12,18)=1;
g1(12,25)=(-1);
g1(13,2)=params(12);
g1(13,8)=params(14);
g1(13,19)=1;
g1(13,26)=(-1);
g1(14,23)=(-(1-params(3)));
g1(15,23)=(-(1-params(3)));
g1(16,21)=params(3)*T(1);
g1(16,24)=(-(params(3)*T(1)));
g1(17,22)=params(3)*T(1);
g1(17,24)=(-(params(3)*T(1)));
g1(18,7)=(-(1-params(1)));
g1(18,9)=(-params(1));
g1(18,12)=1;
g1(18,16)=(-1);
g1(19,8)=(-(1-params(2)));
g1(19,10)=(-params(2));
g1(19,13)=1;
g1(19,17)=(-1);
g1(20,7)=(-1);
g1(20,9)=1;
g1(20,24)=1;
g1(20,25)=(-1);
g1(21,8)=(-1);
g1(21,10)=1;
g1(21,24)=1;
g1(21,26)=(-1);
g1(22,16)=1;
g1(22,21)=1;
g1(22,24)=(-params(1));
g1(22,25)=(-(1-params(1)));
g1(22,30)=1;
g1(23,17)=1;
g1(23,22)=1;
g1(23,24)=(-params(2));
g1(23,26)=(-(1-params(2)));
g1(23,31)=1;
g1(24,11)=(-((1-params(4))*params(6)));
g1(24,23)=1-params(4);
g1(24,27)=(-((1-params(4))*params(5)));
g1(24,32)=(-1);
g1(25,27)=1;
g1(25,28)=(-T(11));
g1(25,29)=(-(1-T(11)));
g1(26,20)=1;
g1(26,21)=(-T(11));
g1(26,22)=(-(1-T(11)));
g1(27,11)=1;
g1(27,12)=(-T(11));
g1(27,13)=(-(1-T(11)));
g1(28,1)=(-T(12));
g1(28,12)=1;
g1(28,14)=(-(1-T(12)));
g1(29,2)=(-T(12));
g1(29,13)=1;
g1(29,15)=(-T(13));
g1(30,16)=1-params(9);
g1(31,17)=1-params(10);
g1(32,32)=1-params(11);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
