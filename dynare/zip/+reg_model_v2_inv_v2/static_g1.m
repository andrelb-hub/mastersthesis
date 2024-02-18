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
    T = reg_model_v2_inv_v2.static_g1_tt(T, y, x, params);
end
g1 = zeros(34, 34);
g1(1,27)=1;
g1(2,28)=1;
g1(3,27)=1;
g1(3,29)=(-((1-params(8))*(1-params(3)*params(8))/params(8)));
g1(3,31)=(-params(3));
g1(4,27)=1;
g1(4,31)=(-1);
g1(5,28)=1;
g1(5,30)=(-((1-params(8))*(1-params(3)*params(8))/params(8)));
g1(5,32)=(-params(3));
g1(6,28)=1;
g1(6,32)=(-1);
g1(7,9)=(-1);
g1(7,11)=1;
g1(7,21)=(-1);
g1(7,22)=1;
g1(8,10)=(-1);
g1(8,12)=1;
g1(8,21)=(-1);
g1(8,22)=1;
g1(9,1)=1;
g1(9,9)=(-1);
g1(9,21)=(-(1-params(16)));
g1(9,22)=1-params(16);
g1(10,2)=1;
g1(10,10)=(-1);
g1(10,21)=(-(1-params(17)));
g1(10,22)=1-params(17);
g1(11,19)=1;
g1(11,21)=(-params(16));
g1(11,22)=(-(1-params(16)));
g1(12,20)=1;
g1(12,21)=(-params(17));
g1(12,22)=(-(1-params(17)));
g1(13,1)=params(12);
g1(13,3)=params(14);
g1(13,19)=1;
g1(13,24)=(-1);
g1(14,2)=params(12);
g1(14,4)=params(14);
g1(14,20)=1;
g1(14,25)=(-1);
g1(15,5)=(-(1-params(4)));
g1(15,19)=1;
g1(15,33)=1;
g1(16,5)=1;
g1(16,33)=(-1);
g1(17,6)=(-(1-params(4)));
g1(17,20)=1;
g1(17,34)=1;
g1(18,6)=1;
g1(18,34)=(-1);
g1(19,21)=params(3)*T(1);
g1(19,23)=(-(params(3)*T(1)));
g1(20,21)=params(3)*T(1);
g1(20,23)=(-(params(3)*T(1)));
g1(21,3)=(-(1-params(1)));
g1(21,5)=(-params(1));
g1(21,13)=1;
g1(21,16)=(-1);
g1(22,4)=(-(1-params(2)));
g1(22,6)=(-params(2));
g1(22,14)=1;
g1(22,17)=(-1);
g1(23,3)=(-1);
g1(23,5)=1;
g1(23,23)=1;
g1(23,24)=(-1);
g1(24,4)=(-1);
g1(24,6)=1;
g1(24,23)=1;
g1(24,25)=(-1);
g1(25,16)=1;
g1(25,21)=1;
g1(25,23)=(-params(1));
g1(25,24)=(-(1-params(1)));
g1(25,29)=1;
g1(26,17)=1;
g1(26,22)=1;
g1(26,23)=(-params(2));
g1(26,25)=(-(1-params(2)));
g1(26,30)=1;
g1(27,15)=(-((1-params(5))*params(7)));
g1(27,18)=(-1);
g1(27,23)=1-params(5);
g1(27,26)=(-((1-params(5))*params(6)));
g1(28,26)=1;
g1(28,27)=(-T(11));
g1(28,28)=(-(1-T(11)));
g1(29,13)=(-T(11));
g1(29,14)=(-(1-T(11)));
g1(29,15)=1;
g1(30,7)=(-(1-T(12)-T(13)));
g1(30,9)=(-T(12));
g1(30,10)=(-T(13));
g1(30,13)=1;
g1(31,8)=(-(1-T(14)-T(15)));
g1(31,11)=(-T(14));
g1(31,12)=(-T(15));
g1(31,14)=1;
g1(32,16)=1-params(9);
g1(33,17)=1-params(10);
g1(34,18)=1-params(11);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
