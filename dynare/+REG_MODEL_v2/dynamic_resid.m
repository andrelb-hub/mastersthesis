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
    T = REG_MODEL_v2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(31, 1);
lhs = y(36);
rhs = y(30)-y(6);
residual(1) = lhs - rhs;
lhs = y(37);
rhs = y(31)-y(7);
residual(2) = lhs - rhs;
lhs = y(36);
rhs = params(2)*y(48)+y(38)*(1-params(7))*(1-params(2)*params(7))/params(7);
residual(3) = lhs - rhs;
lhs = y(37);
rhs = params(2)*y(49)+(1-params(2)*params(7))*(1-params(7))*y(39)/params(7);
residual(4) = lhs - rhs;
lhs = y(18);
rhs = (1-params(6))*y(1)+params(6)*y(23);
residual(5) = lhs - rhs;
lhs = y(19);
rhs = (1-params(6))*y(2)+params(6)*y(24);
residual(6) = lhs - rhs;
lhs = y(10);
rhs = params(15)*y(12)+(1-params(15))*y(14);
residual(7) = lhs - rhs;
lhs = y(11);
rhs = params(16)*y(13)+(1-params(16))*y(15);
residual(8) = lhs - rhs;
lhs = y(12)-y(14);
rhs = y(15)-y(13);
residual(9) = lhs - rhs;
lhs = y(27);
rhs = y(10)+params(15)*y(30)+(1-params(15))*y(31);
residual(10) = lhs - rhs;
lhs = y(28);
rhs = y(11)+params(16)*y(30)+(1-params(16))*y(31);
residual(11) = lhs - rhs;
lhs = params(13)*y(16)-y(10)*(1-params(11));
rhs = y(34)-y(27);
residual(12) = lhs - rhs;
lhs = params(13)*y(17)-y(11)*(1-params(11));
rhs = y(34)-y(28);
residual(13) = lhs - rhs;
lhs = y(43)-(1-params(11))*y(41)-(y(27)-y(10)*(1-params(11)));
rhs = (1-params(2))*y(32);
residual(14) = lhs - rhs;
lhs = y(44)-(1-params(11))*y(42)-(y(28)-y(11)*(1-params(11)));
rhs = (1-params(2))*y(32);
residual(15) = lhs - rhs;
lhs = y(43)-y(45)-(1-params(11))*y(41)-(y(27)-y(30)-y(10)*(1-params(11)));
rhs = (y(47)-y(45))*T(14);
residual(16) = lhs - rhs;
lhs = y(44)-y(46)-(1-params(11))*y(42)-(y(28)-y(31)-y(11)*(1-params(11)));
rhs = (y(47)-y(46))*T(14);
residual(17) = lhs - rhs;
lhs = y(21);
rhs = y(25)+params(1)*y(1)+(1-params(1))*y(16);
residual(18) = lhs - rhs;
lhs = y(22);
rhs = y(26)+params(1)*y(2)+(1-params(1))*y(17);
residual(19) = lhs - rhs;
lhs = y(1)-y(16);
rhs = y(2)-y(17);
residual(20) = lhs - rhs;
lhs = y(38);
rhs = params(1)*y(33)+(1-params(1))*y(34)-y(25)-y(30);
residual(21) = lhs - rhs;
lhs = y(39);
rhs = params(1)*y(33)+(1-params(1))*y(34)-y(26)-y(31);
residual(22) = lhs - rhs;
lhs = y(32);
rhs = params(3)*y(8)+(1-params(3))*(params(4)*y(35)+params(5)*y(20))+y(40);
residual(23) = lhs - rhs;
lhs = y(35);
rhs = y(29)-y(5);
residual(24) = lhs - rhs;
lhs = y(29);
rhs = y(30)*T(13)+y(31)*(1-T(13));
residual(25) = lhs - rhs;
lhs = y(20);
rhs = y(21)*T(13)+y(22)*(1-T(13));
residual(26) = lhs - rhs;
lhs = y(21);
rhs = y(10)*T(12)+y(23)*(1-T(12));
residual(27) = lhs - rhs;
lhs = y(22);
rhs = y(11)*T(12)+y(24)*T(15);
residual(28) = lhs - rhs;
lhs = y(25);
rhs = params(8)*y(3)+x(it_, 1);
residual(29) = lhs - rhs;
lhs = y(26);
rhs = params(9)*y(4)+x(it_, 2);
residual(30) = lhs - rhs;
lhs = y(40);
rhs = params(10)*y(9)+x(it_, 3);
residual(31) = lhs - rhs;

end
