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
    T = NK_Inv_MonPol.static_g1_tt(T, y, x, params);
end
g1 = zeros(12, 12);
g1(1,1)=1;
g1(2,1)=1-T(2);
g1(2,3)=(-((1-params(8))*(1-T(2)*params(8))/params(8)));
g1(3,2)=1;
g1(3,4)=params(1);
g1(3,5)=params(3);
g1(3,9)=(-1);
g1(4,2)=(-(T(1)*(-params(4))/params(1)));
g1(4,6)=(-(params(4)*T(1)/params(1)));
g1(5,7)=1-(1-params(5));
g1(5,8)=(-params(5));
g1(6,2)=1;
g1(6,3)=1;
g1(6,6)=(-params(6));
g1(6,9)=(-(1-params(6)));
g1(6,10)=1;
g1(7,5)=(-(1-params(6)));
g1(7,7)=(-params(6));
g1(7,10)=(-1);
g1(7,11)=1;
g1(8,5)=(-1);
g1(8,6)=1;
g1(8,7)=1;
g1(8,9)=(-1);
g1(9,4)=(-params(14));
g1(9,8)=(-params(15));
g1(9,11)=1;
g1(10,1)=(-((1-params(9))*params(10)));
g1(10,6)=1-params(9);
g1(10,11)=(-((1-params(9))*params(11)));
g1(10,12)=(-1);
g1(11,10)=1-params(12);
g1(12,12)=1-params(13);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
