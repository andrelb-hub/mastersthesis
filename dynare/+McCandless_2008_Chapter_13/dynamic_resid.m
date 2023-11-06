function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = McCandless_2008_Chapter_13.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(16, 1);
lhs = 0;
rhs = y(20)/(y(25)*y(24))-y(26);
residual(1) = lhs - rhs;
lhs = 0;
rhs = y(14)/(y(25)*y(24))*(1+params(4)*(y(11)-y(1)))-y(27);
residual(2) = lhs - rhs;
lhs = 0;
rhs = params(6)/y(8)+T(1);
residual(3) = lhs - rhs;
lhs = 0;
rhs = y(14)*y(10)-y(13);
residual(4) = lhs - rhs;
lhs = 0;
rhs = y(11)+y(13)/y(14)+y(20)*y(18)/y(14)+params(4)/2*(y(11)-y(1))^2-y(8)*y(12)-y(1)*y(9)-y(1)*(1-params(2))-y(20)*(1+y(7))*y(6)/y(14);
residual(5) = lhs - rhs;
lhs = 0;
rhs = y(8)-T(3)*T(4);
residual(6) = lhs - rhs;
lhs = 0;
rhs = y(9)-T(6)*T(7);
residual(7) = lhs - rhs;
lhs = 0;
rhs = y(18)-(1+y(7))*y(6)-y(15)*y(21);
residual(8) = lhs - rhs;
lhs = 0;
rhs = y(19)-params(11)+y(18)*params(5)/y(15);
residual(9) = lhs - rhs;
lhs = 0;
rhs = y(20)-y(14)/y(15);
residual(10) = lhs - rhs;
lhs = 0;
rhs = y(13)-y(16)*y(2);
residual(11) = lhs - rhs;
lhs = y(17);
rhs = 1-params(7)+params(7)*y(5)+params(12)*x(it_, 1);
residual(12) = lhs - rhs;
lhs = y(16);
rhs = 1-params(8)+params(8)*y(4)+params(13)*x(it_, 2);
residual(13) = lhs - rhs;
lhs = y(15);
rhs = 1-params(9)+params(9)*y(3)+params(14)*x(it_, 3);
residual(14) = lhs - rhs;
lhs = y(22);
rhs = (1+y(7))*y(20)*params(1)/(y(25)*y(24));
residual(15) = lhs - rhs;
lhs = y(23);
rhs = T(1)*(params(4)*(y(11)-y(1))+1-params(2)+y(9));
residual(16) = lhs - rhs;

end
