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

assert(length(T) >= 6);

T(1) = 0.7^(1-params(13));
T(2) = T(1)/(params(13)^params(13)*(1-params(13))^(1-params(13)));
T(3) = T(1)/(params(14)^params(14)*(1-params(14))^(1-params(14)));
T(4) = (T(2)*((params(12)-1)/params(12)/(T(2)*params(10)))^(1/params(9)))^(params(9)/(params(9)+params(11)));
T(5) = (T(3)*(0.7*0.7*(params(12)-1)/params(12)*0.7^params(11)/(T(3)*params(10)))^(1/params(9))/0.7)^(params(9)/(params(9)+params(11)));
T(6) = T(4)/(T(4)+0.7*T(5));

end
