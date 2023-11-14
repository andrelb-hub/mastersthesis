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
    T = Gali_Monacelli_2005.static_g1_tt(T, y, x, params);
end
g1 = zeros(19, 19);
g1(1,5)=(-T(3));
g1(1,6)=T(3);
g1(2,2)=(-((1-params(7)*params(6))*(1-params(6))/params(6)*T(2)));
g1(3,5)=1;
g1(3,17)=(-((1-params(10))*(1+params(4))/T(2)*(-T(1))));
g1(4,4)=1;
g1(4,12)=(-T(4));
g1(4,17)=(-((1+params(4))/T(2)));
g1(5,2)=1;
g1(5,3)=(-1);
g1(5,4)=1;
g1(6,3)=1;
g1(6,7)=(-T(3));
g1(6,12)=(-1);
g1(7,8)=1;
g1(9,13)=1;
g1(10,3)=1;
g1(10,14)=(-1);
g1(10,17)=(-1);
g1(11,7)=(-(params(8)*((params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)-1)));
g1(11,15)=1;
g1(12,3)=1;
g1(12,7)=(-(params(8)*(params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)));
g1(12,18)=(-1);
g1(13,14)=(-params(4));
g1(13,16)=1;
g1(13,18)=(-params(1));
g1(14,17)=1-params(10);
g1(15,12)=1-params(11);
g1(16,1)=1;
g1(17,8)=1;
g1(19,19)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
