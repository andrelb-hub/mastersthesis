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
    T = REG_MODEL_v6f.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(25, 1);
lhs = y(28);
rhs = y(22)-y(4);
residual(1) = lhs - rhs;
lhs = y(29);
rhs = y(23)-y(5);
residual(2) = lhs - rhs;
lhs = y(28);
rhs = params(1)*y(35)+y(30)*(1-params(5))*(1-params(1)*params(5))/params(5);
residual(3) = lhs - rhs;
lhs = y(29);
rhs = params(1)*y(36)+(1-params(1)*params(5))*(1-params(5))*y(31)/params(5);
residual(4) = lhs - rhs;
lhs = y(13)-y(11);
rhs = y(22)-y(23);
residual(5) = lhs - rhs;
lhs = y(14)-y(12);
rhs = y(22)-y(23);
residual(6) = lhs - rhs;
lhs = y(7)-y(11);
rhs = (1-params(13))*(y(22)-y(23));
residual(7) = lhs - rhs;
lhs = y(8)-y(12);
rhs = (1-params(14))*(y(22)-y(23));
residual(8) = lhs - rhs;
lhs = y(21);
rhs = params(13)*y(22)+(1-params(13))*y(23);
residual(9) = lhs - rhs;
lhs = params(11)*y(9)+params(9)*y(7);
rhs = y(25)-y(21);
residual(10) = lhs - rhs;
lhs = params(11)*y(10)+params(9)*y(8);
rhs = y(26)-y(21);
residual(11) = lhs - rhs;
lhs = y(34)-y(21)+params(9)*(y(32)-y(7));
rhs = (1-params(1))*y(24);
residual(12) = lhs - rhs;
lhs = y(32)-y(7);
rhs = y(33)-y(8);
residual(13) = lhs - rhs;
lhs = y(16);
rhs = y(9)+y(18);
residual(14) = lhs - rhs;
lhs = y(17);
rhs = y(10)+y(19);
residual(15) = lhs - rhs;
lhs = y(30);
rhs = y(25)-y(18)-y(22);
residual(16) = lhs - rhs;
lhs = y(31);
rhs = y(26)-y(19)-y(23);
residual(17) = lhs - rhs;
lhs = y(24);
rhs = params(2)*y(6)+(1-params(2))*(params(3)*y(27)+params(4)*y(15))+y(20);
residual(18) = lhs - rhs;
lhs = y(27);
rhs = y(28)*T(4)+y(29)*(1-T(4));
residual(19) = lhs - rhs;
lhs = y(15);
rhs = y(16)*T(4)+y(17)*(1-T(4));
residual(20) = lhs - rhs;
lhs = y(22)+y(16);
rhs = y(7)+y(21);
residual(21) = lhs - rhs;
lhs = y(23)+y(17);
rhs = y(8)+y(21);
residual(22) = lhs - rhs;
lhs = y(18);
rhs = params(6)*y(1)+x(it_, 1);
residual(23) = lhs - rhs;
lhs = y(19);
rhs = params(7)*y(2)+x(it_, 2);
residual(24) = lhs - rhs;
lhs = y(20);
rhs = params(8)*y(3)+x(it_, 3);
residual(25) = lhs - rhs;

end
