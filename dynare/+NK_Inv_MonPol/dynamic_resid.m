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
    T = NK_Inv_MonPol.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(12, 1);
lhs = y(6);
rhs = y(7)-y(1);
residual(1) = lhs - rhs;
lhs = y(6);
rhs = y(18)*T(2)+y(8)*(1-params(8))*(1-params(8)*T(2))/params(8);
residual(2) = lhs - rhs;
lhs = params(3)*y(10)+params(1)*y(9);
rhs = y(14)-y(7);
residual(3) = lhs - rhs;
lhs = y(20)-y(9);
rhs = T(1)*params(4)*(y(21)-y(19))/params(1);
residual(4) = lhs - rhs;
lhs = y(12);
rhs = (1-params(5))*y(3)+params(5)*y(13);
residual(5) = lhs - rhs;
lhs = y(8);
rhs = params(6)*y(11)+(1-params(6))*y(14)-y(15)-y(7);
residual(6) = lhs - rhs;
lhs = y(16);
rhs = y(15)+params(6)*y(3)+(1-params(6))*y(10);
residual(7) = lhs - rhs;
lhs = y(3)-y(10);
rhs = y(14)-y(11);
residual(8) = lhs - rhs;
lhs = y(16);
rhs = y(9)*params(14)+y(13)*params(15);
residual(9) = lhs - rhs;
lhs = y(11);
rhs = params(9)*y(2)+(1-params(9))*(y(6)*params(10)+y(16)*params(11))+y(17);
residual(10) = lhs - rhs;
lhs = y(15);
rhs = params(12)*y(4)-x(it_, 1);
residual(11) = lhs - rhs;
lhs = y(17);
rhs = params(13)*y(5)+x(it_, 2);
residual(12) = lhs - rhs;

end
