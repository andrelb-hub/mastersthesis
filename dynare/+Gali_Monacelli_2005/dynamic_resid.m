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
    T = Gali_Monacelli_2005.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(19, 1);
lhs = y(8);
rhs = y(26)-(y(12)-y(11))*T(3);
residual(1) = lhs - rhs;
lhs = 0;
rhs = y(8)*(1-params(7)*params(6))*(1-params(6))/params(6)*T(2);
residual(2) = lhs - rhs;
lhs = y(11);
rhs = y(23)*(1-params(10))*(1+params(4))/T(2)*(-T(1))+(y(27)-y(18))*T(4);
residual(3) = lhs - rhs;
lhs = y(10);
rhs = y(23)*(1+params(4))/T(2)+y(18)*T(5);
residual(4) = lhs - rhs;
lhs = y(8);
rhs = y(9)-y(10);
residual(5) = lhs - rhs;
lhs = y(9);
rhs = y(18)+y(13)*T(3);
residual(6) = lhs - rhs;
lhs = y(14);
rhs = params(8)*(y(13)-y(1));
residual(7) = lhs - rhs;
lhs = y(13);
rhs = y(1)+y(17)-y(4);
residual(8) = lhs - rhs;
residual(9) = y(19);
lhs = y(9);
rhs = y(23)+y(20);
residual(10) = lhs - rhs;
lhs = y(21);
rhs = y(13)*params(8)*((params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)-1);
residual(11) = lhs - rhs;
lhs = y(9);
rhs = y(24)+y(13)*params(8)*(params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1);
residual(12) = lhs - rhs;
lhs = y(22);
rhs = params(1)*y(24)+params(4)*y(20);
residual(13) = lhs - rhs;
lhs = y(23);
rhs = params(10)*y(6)+x(it_, 2);
residual(14) = lhs - rhs;
lhs = y(18);
rhs = params(11)*y(5)+x(it_, 1);
residual(15) = lhs - rhs;
residual(16) = y(7);
lhs = y(14);
rhs = y(15)-y(2);
residual(17) = lhs - rhs;
lhs = 0;
rhs = y(16)-y(3);
residual(18) = lhs - rhs;
lhs = y(25);
rhs = y(17)-y(4);
residual(19) = lhs - rhs;

end
