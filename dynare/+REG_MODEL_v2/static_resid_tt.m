function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 15);

T(1) = (1-params(15))^(1-params(15));
T(2) = params(15)^params(15);
T(3) = ((1-params(1))*((params(14)-1)/params(14)*(params(1)/(1/params(2)-(1-params(6))))^params(1))^(1/(1-params(1))))^(1+params(13));
T(4) = params(12)*((params(14)-1)/params(14)*(1-params(1)))^params(13);
T(5) = (T(1)*T(2)*T(3)/T(4))^(1/params(11));
T(6) = (1-params(16))^(1-params(16));
T(7) = params(16)^params(16);
T(8) = (T(6)*T(3)*T(7)/T(4))^(1/params(11));
T(9) = 1-(params(14)-1)/params(14)*params(6)*params(1)/(1/params(2)-(1-params(6)));
T(10) = (1/(T(1)*T(2))*T(5)/T(9))^(params(11)/(params(13)+params(11)));
T(11) = (1/(T(6)*T(7))*T(8)/T(9))^(params(11)/(params(13)+params(11)));
T(12) = T(10)/(T(10)+T(11));
T(13) = T(5)*(T(10))^((-params(13))/params(11))/T(10);
T(14) = params(2)*(1/params(2)-(1-params(6)));
T(15) = 1-T(8)*(T(11))^((-params(13))/params(11))/T(11);

end
