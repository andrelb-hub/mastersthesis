function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = REG_MODEL_v3.static_resid_tt(T, y, x, params);
end
residual = zeros(32, 1);
residual(1) = y(28);
residual(2) = y(29);
lhs = y(28);
rhs = params(3)*y(28)+y(30)*(1-params(8))*(1-params(3)*params(8))/params(8);
residual(3) = lhs - rhs;
lhs = y(29);
rhs = params(3)*y(29)+(1-params(3)*params(8))*(1-params(8))*y(31)/params(8);
residual(4) = lhs - rhs;
lhs = y(9);
rhs = (1-params(7))*y(9)+params(7)*y(14);
residual(5) = lhs - rhs;
lhs = y(10);
rhs = (1-params(7))*y(10)+params(7)*y(15);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = params(16)*y(3)+(1-params(16))*y(5);
residual(7) = lhs - rhs;
lhs = y(2);
rhs = params(17)*y(4)+(1-params(17))*y(6);
residual(8) = lhs - rhs;
lhs = y(3)-y(5);
rhs = y(6)-y(4);
residual(9) = lhs - rhs;
lhs = y(18);
rhs = y(1)+params(16)*y(21)+(1-params(16))*y(22);
residual(10) = lhs - rhs;
lhs = y(19);
rhs = y(2)+params(17)*y(21)+(1-params(17))*y(22);
residual(11) = lhs - rhs;
lhs = params(14)*y(7)-y(1)*(1-params(12));
rhs = y(25)-y(18);
residual(12) = lhs - rhs;
lhs = params(14)*y(8)-y(2)*(1-params(12));
rhs = y(26)-y(19);
residual(13) = lhs - rhs;
lhs = 0;
rhs = (1-params(3))*y(23);
residual(14) = lhs - rhs;
lhs = 0;
rhs = (1-params(3))*y(23);
residual(15) = lhs - rhs;
lhs = 0;
rhs = (y(24)-y(21))*params(3)*T(1);
residual(16) = lhs - rhs;
lhs = 0;
rhs = params(3)*T(1)*(y(24)-y(22));
residual(17) = lhs - rhs;
lhs = y(12);
rhs = y(16)+params(1)*y(9)+(1-params(1))*y(7);
residual(18) = lhs - rhs;
lhs = y(13);
rhs = y(17)+params(2)*y(10)+(1-params(2))*y(8);
residual(19) = lhs - rhs;
lhs = y(9)-y(7);
rhs = y(25)-y(24);
residual(20) = lhs - rhs;
lhs = y(10)-y(8);
rhs = y(26)-y(24);
residual(21) = lhs - rhs;
lhs = y(30);
rhs = params(1)*y(24)+(1-params(1))*y(25)-y(16)-y(21);
residual(22) = lhs - rhs;
lhs = y(31);
rhs = params(2)*y(24)+(1-params(2))*y(26)-y(17)-y(22);
residual(23) = lhs - rhs;
lhs = y(23);
rhs = y(23)*params(4)+(1-params(4))*(params(5)*y(27)+params(6)*y(11))+y(32);
residual(24) = lhs - rhs;
lhs = y(27);
rhs = T(11)*y(28)+y(29)*(1-T(11));
residual(25) = lhs - rhs;
lhs = y(20);
rhs = T(11)*y(21)+y(22)*(1-T(11));
residual(26) = lhs - rhs;
lhs = y(11);
rhs = T(11)*y(12)+y(13)*(1-T(11));
residual(27) = lhs - rhs;
lhs = y(12);
rhs = T(12)*y(1)+y(14)*(1-T(12));
residual(28) = lhs - rhs;
lhs = y(13);
rhs = T(12)*y(2)+y(15)*T(13);
residual(29) = lhs - rhs;
lhs = y(16);
rhs = y(16)*params(9)+x(1);
residual(30) = lhs - rhs;
lhs = y(17);
rhs = y(17)*params(10)+x(2);
residual(31) = lhs - rhs;
lhs = y(32);
rhs = y(32)*params(11)+x(3);
residual(32) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
