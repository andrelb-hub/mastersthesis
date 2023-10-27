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

assert(length(T) >= 13);

T(1) = 1/params(3)-(1-params(7));
T(2) = (params(15)-1)/params(15);
T(3) = (1-params(16))^(1-params(16));
T(4) = params(16)^params(16);
T(5) = (T(3)*T(4)*((1-params(1))*(T(2)*(params(1)/T(1))^params(1))^(1/(1-params(1))))^(1+params(14))/(params(13)*(T(2)*(1-params(1)))^params(14)))^(1/params(12));
T(6) = (1-params(17))^(1-params(17));
T(7) = params(17)^params(17);
T(8) = (T(6)*T(7)*((1-params(2))*(0.8*T(2)*(params(2)/T(1))^params(2))^(1/(1-params(2))))^(1+params(14))/(params(13)*(T(2)*(1-params(2)))^params(14)))^(1/params(12));
T(9) = (1/(T(3)*T(4))*T(5)/(1-T(2)*params(7)*params(1)/T(1)))^(params(12)/(params(14)+params(12)));
T(10) = (1/(T(6)*T(7))*T(8)/(1-T(2)*params(7)*params(2)/T(1)))^(params(12)/(params(14)+params(12)));
T(11) = T(9)/(T(9)+T(10));
T(12) = T(5)*(T(9))^((-params(14))/params(12))/T(9);
T(13) = 1-T(8)*(T(10))^((-params(14))/params(12))/T(10);

end
