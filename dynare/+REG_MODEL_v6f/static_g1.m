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
    T = REG_MODEL_v6f.static_g1_tt(T, y, x, params);
end
g1 = zeros(27, 27);
g1(1,22)=1;
g1(2,23)=1;
g1(3,22)=1;
g1(3,24)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(3,26)=(-params(1));
g1(4,22)=1;
g1(4,26)=(-1);
g1(5,23)=1;
g1(5,25)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(5,27)=(-params(1));
g1(6,23)=1;
g1(6,27)=(-1);
g1(7,5)=(-1);
g1(7,7)=1;
g1(7,16)=(-1);
g1(7,17)=1;
g1(8,6)=(-1);
g1(8,8)=1;
g1(8,16)=(-1);
g1(8,17)=1;
g1(9,1)=1;
g1(9,5)=(-1);
g1(9,16)=(-(1-params(13)));
g1(9,17)=1-params(13);
g1(10,2)=1;
g1(10,6)=(-1);
g1(10,16)=(-(1-params(14)));
g1(10,17)=1-params(14);
g1(11,15)=1;
g1(11,16)=(-params(13));
g1(11,17)=(-(1-params(13)));
g1(12,1)=params(9);
g1(12,3)=params(11);
g1(12,15)=1;
g1(12,19)=(-1);
g1(13,2)=params(9);
g1(13,4)=params(11);
g1(13,15)=1;
g1(13,20)=(-1);
g1(14,18)=(-(1-params(1)));
g1(16,3)=(-1);
g1(16,10)=1;
g1(16,12)=(-1);
g1(17,4)=(-1);
g1(17,11)=1;
g1(17,13)=(-1);
g1(18,12)=1;
g1(18,16)=1;
g1(18,19)=(-1);
g1(18,24)=1;
g1(19,13)=1;
g1(19,17)=1;
g1(19,20)=(-1);
g1(19,25)=1;
g1(20,9)=(-((1-params(2))*params(4)));
g1(20,14)=(-1);
g1(20,18)=1-params(2);
g1(20,21)=(-((1-params(2))*params(3)));
g1(21,21)=1;
g1(21,22)=(-T(4));
g1(21,23)=(-(1-T(4)));
g1(22,9)=1;
g1(22,10)=(-T(4));
g1(22,11)=(-(1-T(4)));
g1(23,1)=(-1);
g1(23,10)=1;
g1(23,15)=(-1);
g1(23,16)=1;
g1(24,2)=(-1);
g1(24,11)=1;
g1(24,15)=(-1);
g1(24,17)=1;
g1(25,12)=1-params(6);
g1(26,13)=1-params(7);
g1(27,14)=1-params(8);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
