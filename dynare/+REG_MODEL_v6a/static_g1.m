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
    T = REG_MODEL_v6a.static_g1_tt(T, y, x, params);
end
g1 = zeros(22, 22);
g1(1,21)=1;
g1(3,21)=1-params(1);
g1(3,22)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(4,5)=(-1);
g1(4,6)=1;
g1(4,7)=1;
g1(4,8)=(-1);
g1(5,1)=1;
g1(5,5)=(-1);
g1(5,16)=(-(1-params(13)));
g1(5,17)=1-params(13);
g1(6,1)=1/(1-params(13));
g1(6,2)=(-(1/(1-params(14))));
g1(6,5)=(-1)/(1-params(13));
g1(6,6)=(-((-1)/(1-params(14))));
g1(7,15)=1;
g1(7,16)=(-params(13));
g1(7,17)=(-(1-params(13)));
g1(8,1)=params(9);
g1(8,3)=params(11);
g1(8,15)=1;
g1(8,19)=(-1);
g1(9,1)=params(9);
g1(9,2)=(-params(9));
g1(9,3)=params(11);
g1(9,4)=(-params(11));
g1(9,19)=(-1);
g1(9,20)=1;
g1(10,18)=(-(1-params(1)));
g1(12,3)=(-1);
g1(12,10)=1;
g1(12,12)=(-1);
g1(13,4)=(-1);
g1(13,11)=1;
g1(13,13)=(-1);
g1(14,12)=1;
g1(14,16)=1;
g1(14,19)=(-1);
g1(14,22)=1;
g1(15,12)=(-1);
g1(15,13)=1;
g1(15,16)=(-1);
g1(15,17)=1;
g1(15,19)=1;
g1(15,20)=(-1);
g1(16,9)=(-((1-params(2))*params(4)));
g1(16,14)=(-1);
g1(16,18)=1-params(2);
g1(16,21)=(-((1-params(2))*params(3)));
g1(17,9)=1;
g1(17,10)=(-T(5));
g1(17,11)=(-(1-T(5)));
g1(18,1)=(-1);
g1(18,10)=1;
g1(18,15)=(-1);
g1(18,16)=1;
g1(19,2)=(-1);
g1(19,11)=1;
g1(19,15)=(-1);
g1(19,17)=1;
g1(20,12)=1-params(6);
g1(21,13)=1-params(7);
g1(22,14)=1-params(8);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
