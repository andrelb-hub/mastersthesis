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
g1 = zeros(25, 25);
g1(1,22)=1;
g1(2,23)=1;
g1(3,22)=1-params(1);
g1(3,24)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(4,23)=1-params(1);
g1(4,25)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(5,5)=(-1);
g1(5,7)=1;
g1(5,16)=(-1);
g1(5,17)=1;
g1(6,6)=(-1);
g1(6,8)=1;
g1(6,16)=(-1);
g1(6,17)=1;
g1(7,1)=1;
g1(7,5)=(-1);
g1(7,16)=(-(1-params(13)));
g1(7,17)=1-params(13);
g1(8,2)=1;
g1(8,6)=(-1);
g1(8,16)=(-(1-params(14)));
g1(8,17)=1-params(14);
g1(9,15)=1;
g1(9,16)=(-params(13));
g1(9,17)=(-(1-params(13)));
g1(10,1)=params(9);
g1(10,3)=params(11);
g1(10,15)=1;
g1(10,19)=(-1);
g1(11,2)=params(9);
g1(11,4)=params(11);
g1(11,15)=1;
g1(11,20)=(-1);
g1(12,18)=(-(1-params(1)));
g1(14,3)=(-1);
g1(14,10)=1;
g1(14,12)=(-1);
g1(15,4)=(-1);
g1(15,11)=1;
g1(15,13)=(-1);
g1(16,12)=1;
g1(16,16)=1;
g1(16,19)=(-1);
g1(16,24)=1;
g1(17,13)=1;
g1(17,17)=1;
g1(17,20)=(-1);
g1(17,25)=1;
g1(18,9)=(-((1-params(2))*params(4)));
g1(18,14)=(-1);
g1(18,18)=1-params(2);
g1(18,21)=(-((1-params(2))*params(3)));
g1(19,21)=1;
g1(19,22)=(-T(4));
g1(19,23)=(-(1-T(4)));
g1(20,9)=1;
g1(20,10)=(-T(4));
g1(20,11)=(-(1-T(4)));
g1(21,1)=(-1);
g1(21,10)=1;
g1(21,15)=(-1);
g1(21,16)=1;
g1(22,2)=(-1);
g1(22,11)=1;
g1(22,15)=(-1);
g1(22,17)=1;
g1(23,12)=1-params(6);
g1(24,13)=1-params(7);
g1(25,14)=1-params(8);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
