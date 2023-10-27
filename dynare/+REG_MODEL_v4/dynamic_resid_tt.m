function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 13);

T(1) = 1/params(3)-(1-params(7));
T(2) = params(16)^params(16);
T(3) = (1-params(16))^(1-params(16));
T(4) = params(17)^params(17);
T(5) = (1-params(17))^(1-params(17));
T(6) = (params(15)-1)/params(15);
T(7) = (T(3)*T(2)*((1-params(1))*(T(6)*(params(1)/T(1))^params(1))^(1/(1-params(1))))^(1+params(14))/(params(13)*((1-params(1))*T(6))^params(14)))^(1/params(12));
T(8) = (T(5)*T(4)*((1-params(2))*(0.8*T(6)*(params(2)/T(1))^params(2))^(1/(1-params(2))))^(1+params(14))/(params(13)*((1-params(2))*T(6))^params(14)))^(1/params(12));
T(9) = (1/(T(2)*T(3))*T(7)/(1-params(7)*params(1)*T(6)/T(1)))^(params(12)/(params(14)+params(12)));
T(10) = (1/(T(4)*T(5))*T(8)/(1-params(7)*params(2)*T(6)/T(1)))^(params(12)/(params(14)+params(12)));
T(11) = T(7)*(T(9))^((-params(14))/params(12))/T(9);
T(12) = T(9)/(T(9)+T(10));
T(13) = 1-T(8)*(T(10))^((-params(14))/params(12))/T(10);

end
