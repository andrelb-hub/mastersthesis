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
    T = model_03_nk_reg_inv.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(34, 1);
lhs = y(37);
rhs = y(31)-y(4);
residual(1) = lhs - rhs;
lhs = y(38);
rhs = y(32)-y(5);
residual(2) = lhs - rhs;
lhs = y(37);
rhs = params(3)*y(41)+y(39)*(1-params(8))*(1-params(3)*params(8))/params(8);
residual(3) = lhs - rhs;
lhs = y(37)-y(7);
rhs = x(it_, 4);
residual(4) = lhs - rhs;
lhs = y(38);
rhs = params(3)*y(42)+(1-params(3)*params(8))*(1-params(8))*y(40)/params(8);
residual(5) = lhs - rhs;
lhs = y(38)-y(8);
rhs = x(it_, 5);
residual(6) = lhs - rhs;
lhs = y(21)-y(19);
rhs = y(31)-y(32);
residual(7) = lhs - rhs;
lhs = y(22)-y(20);
rhs = y(31)-y(32);
residual(8) = lhs - rhs;
lhs = y(11)-y(19);
rhs = (1-params(16))*(y(31)-y(32));
residual(9) = lhs - rhs;
lhs = y(12)-y(20);
rhs = (1-params(17))*(y(31)-y(32));
residual(10) = lhs - rhs;
lhs = y(29);
rhs = params(16)*y(31)+(1-params(16))*y(32);
residual(11) = lhs - rhs;
lhs = y(30);
rhs = params(17)*y(31)+(1-params(17))*y(32);
residual(12) = lhs - rhs;
lhs = params(14)*y(13)+params(12)*y(11);
rhs = y(34)-y(29);
residual(13) = lhs - rhs;
lhs = params(14)*y(14)+params(12)*y(12);
rhs = y(35)-y(30);
residual(14) = lhs - rhs;
lhs = y(43);
rhs = (1-params(4))*y(15)-y(29);
residual(15) = lhs - rhs;
lhs = y(15)-y(9);
rhs = x(it_, 6);
residual(16) = lhs - rhs;
lhs = y(44);
rhs = (1-params(4))*y(16)-y(30);
residual(17) = lhs - rhs;
lhs = y(16)-y(10);
rhs = x(it_, 7);
residual(18) = lhs - rhs;
lhs = y(47)-y(29)+params(12)*(y(45)-y(11))-(y(49)-y(31));
rhs = (y(51)-y(49))*params(3)*T(1);
residual(19) = lhs - rhs;
lhs = y(48)-y(30)+params(12)*(y(46)-y(12))-(y(50)-y(32));
rhs = (y(51)-y(49))*params(3)*T(1);
residual(20) = lhs - rhs;
lhs = y(23);
rhs = y(26)+params(1)*y(15)+(1-params(1))*y(13);
residual(21) = lhs - rhs;
lhs = y(24);
rhs = y(27)+params(2)*y(16)+(1-params(2))*y(14);
residual(22) = lhs - rhs;
lhs = y(15)-y(13);
rhs = y(34)-y(33);
residual(23) = lhs - rhs;
lhs = y(16)-y(14);
rhs = y(35)-y(33);
residual(24) = lhs - rhs;
lhs = y(39);
rhs = params(1)*y(33)+(1-params(1))*y(34)-y(26)-y(31);
residual(25) = lhs - rhs;
lhs = y(40);
rhs = params(2)*y(33)+(1-params(2))*y(35)-y(27)-y(32);
residual(26) = lhs - rhs;
lhs = y(33);
rhs = params(5)*y(6)+(1-params(5))*(params(6)*y(36)+params(7)*y(25))+y(28);
residual(27) = lhs - rhs;
lhs = y(36);
rhs = y(37)*T(6)+y(38)*(1-T(6));
residual(28) = lhs - rhs;
lhs = y(25);
rhs = y(23)*params(18)+y(24)*(1-params(18));
residual(29) = lhs - rhs;
lhs = y(23);
rhs = y(11)*params(19)+(1-params(19))*y(17);
residual(30) = lhs - rhs;
lhs = y(24);
rhs = y(12)*params(20)+(1-params(20))*y(18);
residual(31) = lhs - rhs;
lhs = y(26);
rhs = params(9)*y(1)+x(it_, 1);
residual(32) = lhs - rhs;
lhs = y(27);
rhs = params(10)*y(2)+x(it_, 2);
residual(33) = lhs - rhs;
lhs = y(28);
rhs = params(11)*y(3)+x(it_, 3);
residual(34) = lhs - rhs;

end
