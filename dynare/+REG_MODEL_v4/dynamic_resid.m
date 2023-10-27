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
    T = REG_MODEL_v4.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(32, 1);
lhs = y(36);
rhs = y(29)-y(5);
residual(1) = lhs - rhs;
lhs = y(37);
rhs = y(30)-y(6);
residual(2) = lhs - rhs;
lhs = y(36);
rhs = params(3)*y(48)+y(38)*(1-params(8))*(1-params(3)*params(8))/params(8);
residual(3) = lhs - rhs;
lhs = y(37);
rhs = params(3)*y(49)+(1-params(3)*params(8))*(1-params(8))*y(39)/params(8);
residual(4) = lhs - rhs;
lhs = y(17);
rhs = (1-params(7))*y(1)+params(7)*y(22);
residual(5) = lhs - rhs;
lhs = y(18);
rhs = (1-params(7))*y(2)+params(7)*y(23);
residual(6) = lhs - rhs;
lhs = y(9);
rhs = params(16)*y(11)+(1-params(16))*y(13);
residual(7) = lhs - rhs;
lhs = y(10);
rhs = params(17)*y(12)+(1-params(17))*y(14);
residual(8) = lhs - rhs;
lhs = y(11)-y(13);
rhs = y(14)-y(12);
residual(9) = lhs - rhs;
lhs = y(26);
rhs = params(16)*y(29)+(1-params(16))*y(30);
residual(10) = lhs - rhs;
lhs = y(27);
rhs = params(17)*y(29)+(1-params(17))*y(30);
residual(11) = lhs - rhs;
lhs = params(14)*y(15)-y(9)*(-params(12));
rhs = y(33)-y(26);
residual(12) = lhs - rhs;
lhs = params(14)*y(16)-y(10)*(-params(12));
rhs = y(34)-y(27);
residual(13) = lhs - rhs;
lhs = y(43)-(-params(12))*y(41)-(y(26)-y(9)*(-params(12)));
rhs = (1-params(3))*y(31);
residual(14) = lhs - rhs;
lhs = y(44)-(-params(12))*y(42)-(y(27)-y(10)*(-params(12)));
rhs = (1-params(3))*y(31);
residual(15) = lhs - rhs;
lhs = y(43)-y(45)-(-params(12))*y(41)-(y(26)-y(29)-y(9)*(-params(12)));
rhs = (y(47)-y(45))*params(3)*T(1);
residual(16) = lhs - rhs;
lhs = y(44)-y(46)-(-params(12))*y(42)-(y(27)-y(30)-y(10)*(-params(12)));
rhs = (y(47)-y(46))*params(3)*T(1);
residual(17) = lhs - rhs;
lhs = y(20);
rhs = y(24)+params(1)*y(1)+(1-params(1))*y(15);
residual(18) = lhs - rhs;
lhs = y(21);
rhs = y(25)+params(2)*y(2)+(1-params(2))*y(16);
residual(19) = lhs - rhs;
lhs = y(1)-y(15);
rhs = y(33)-y(32);
residual(20) = lhs - rhs;
lhs = y(2)-y(16);
rhs = y(34)-y(32);
residual(21) = lhs - rhs;
lhs = y(38);
rhs = params(1)*y(32)+(1-params(1))*y(33)-y(24)-y(29);
residual(22) = lhs - rhs;
lhs = y(39);
rhs = params(2)*y(32)+(1-params(2))*y(34)-y(25)-y(30);
residual(23) = lhs - rhs;
lhs = y(31);
rhs = params(4)*y(7)+(1-params(4))*(params(5)*y(35)+params(6)*y(19))+y(40);
residual(24) = lhs - rhs;
lhs = y(35);
rhs = y(36)*T(12)+y(37)*(1-T(12));
residual(25) = lhs - rhs;
lhs = y(28);
rhs = y(29)*T(12)+y(30)*(1-T(12));
residual(26) = lhs - rhs;
lhs = y(19);
rhs = y(20)*T(12)+y(21)*(1-T(12));
residual(27) = lhs - rhs;
lhs = y(20);
rhs = y(9)*T(11)+y(22)*(1-T(11));
residual(28) = lhs - rhs;
lhs = y(21);
rhs = y(10)*T(11)+y(23)*T(13);
residual(29) = lhs - rhs;
lhs = y(24);
rhs = params(9)*y(3)+x(it_, 1);
residual(30) = lhs - rhs;
lhs = y(25);
rhs = params(10)*y(4)+x(it_, 2);
residual(31) = lhs - rhs;
lhs = y(40);
rhs = params(11)*y(8)+x(it_, 3);
residual(32) = lhs - rhs;

end
