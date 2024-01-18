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
    T = reg_model_v1_bonds.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(27, 1);
lhs = y(30);
rhs = y(24)-y(4);
residual(1) = lhs - rhs;
lhs = y(31);
rhs = y(25)-y(5);
residual(2) = lhs - rhs;
lhs = y(30);
rhs = params(1)*y(34)+y(32)*(1-params(5))*(1-params(1)*params(5))/params(5);
residual(3) = lhs - rhs;
lhs = y(30)-y(7);
rhs = x(it_, 4);
residual(4) = lhs - rhs;
lhs = y(31);
rhs = params(1)*y(35)+(1-params(1)*params(5))*(1-params(5))*y(33)/params(5);
residual(5) = lhs - rhs;
lhs = y(31)-y(8);
rhs = x(it_, 5);
residual(6) = lhs - rhs;
lhs = y(15)-y(13);
rhs = y(24)-y(25);
residual(7) = lhs - rhs;
lhs = y(16)-y(14);
rhs = y(24)-y(25);
residual(8) = lhs - rhs;
lhs = y(9)-y(13);
rhs = (1-params(13))*(y(24)-y(25));
residual(9) = lhs - rhs;
lhs = y(10)-y(14);
rhs = (1-params(14))*(y(24)-y(25));
residual(10) = lhs - rhs;
lhs = y(23);
rhs = params(13)*y(24)+(1-params(13))*y(25);
residual(11) = lhs - rhs;
lhs = params(11)*y(11)+params(9)*y(9);
rhs = y(27)-y(23);
residual(12) = lhs - rhs;
lhs = params(11)*y(12)+params(9)*y(10);
rhs = y(28)-y(23);
residual(13) = lhs - rhs;
lhs = y(38)-y(23)+params(9)*(y(36)-y(9));
rhs = (1-params(1))*y(26);
residual(14) = lhs - rhs;
lhs = y(36)-y(9);
rhs = y(37)-y(10);
residual(15) = lhs - rhs;
lhs = y(18);
rhs = y(11)+y(20);
residual(16) = lhs - rhs;
lhs = y(19);
rhs = y(12)+y(21);
residual(17) = lhs - rhs;
lhs = y(32);
rhs = y(27)-y(20)-y(24);
residual(18) = lhs - rhs;
lhs = y(33);
rhs = y(28)-y(21)-y(25);
residual(19) = lhs - rhs;
lhs = y(26);
rhs = params(2)*y(6)+(1-params(2))*(params(3)*y(29)+params(4)*y(17))+y(22);
residual(20) = lhs - rhs;
lhs = y(29);
rhs = y(30)*T(6)+y(31)*(1-T(6));
residual(21) = lhs - rhs;
lhs = y(17);
rhs = y(18)*T(4)/(T(4)+T(5))+y(19)*(1-T(4)/(T(4)+T(5)));
residual(22) = lhs - rhs;
lhs = y(24)+y(18);
rhs = y(9)+y(23);
residual(23) = lhs - rhs;
lhs = y(25)+y(19);
rhs = y(10)+y(23);
residual(24) = lhs - rhs;
lhs = y(20);
rhs = params(6)*y(1)+x(it_, 1);
residual(25) = lhs - rhs;
lhs = y(21);
rhs = params(7)*y(2)+x(it_, 2);
residual(26) = lhs - rhs;
lhs = y(22);
rhs = params(8)*y(3)+x(it_, 3);
residual(27) = lhs - rhs;

end
