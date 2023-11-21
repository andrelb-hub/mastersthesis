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
    T = REG_MODEL_v6a.static_resid_tt(T, y, x, params);
end
residual = zeros(22, 1);
residual(1) = y(21);
residual(2) = 0;
lhs = y(21);
rhs = params(1)*y(21)+y(22)*(1-params(5))*(1-params(1)*params(5))/params(5);
residual(3) = lhs - rhs;
lhs = y(7)-y(5);
rhs = y(8)-y(6);
residual(4) = lhs - rhs;
lhs = y(1)-y(5);
rhs = (1-params(13))*(y(16)-y(17));
residual(5) = lhs - rhs;
lhs = (y(1)-y(5))/(1-params(13));
rhs = (y(2)-y(6))/(1-params(14));
residual(6) = lhs - rhs;
lhs = y(15);
rhs = params(13)*y(16)+(1-params(13))*y(17);
residual(7) = lhs - rhs;
lhs = params(11)*y(3)+params(9)*y(1);
rhs = y(19)-y(15);
residual(8) = lhs - rhs;
lhs = params(11)*y(3)+params(9)*y(1)-(params(11)*y(4)+params(9)*y(2));
rhs = y(19)-y(20);
residual(9) = lhs - rhs;
lhs = 0;
rhs = (1-params(1))*y(18);
residual(10) = lhs - rhs;
residual(11) = 0;
lhs = y(10);
rhs = y(3)+y(12);
residual(12) = lhs - rhs;
lhs = y(11);
rhs = y(4)+y(13);
residual(13) = lhs - rhs;
lhs = y(22);
rhs = y(19)-y(12)-y(16);
residual(14) = lhs - rhs;
residual(15) = y(19)-y(12)-y(16)-(y(20)-y(13)-y(17));
lhs = y(18);
rhs = y(18)*params(2)+(1-params(2))*(y(21)*params(3)+params(4)*y(9))+y(14);
residual(16) = lhs - rhs;
lhs = y(9);
rhs = T(5)*y(10)+y(11)*(1-T(5));
residual(17) = lhs - rhs;
lhs = y(16)+y(10);
rhs = y(1)+y(15);
residual(18) = lhs - rhs;
lhs = y(17)+y(11);
rhs = y(2)+y(15);
residual(19) = lhs - rhs;
lhs = y(12);
rhs = y(12)*params(6)+x(1);
residual(20) = lhs - rhs;
lhs = y(13);
rhs = y(13)*params(7)+x(2);
residual(21) = lhs - rhs;
lhs = y(14);
rhs = y(14)*params(8)+x(3);
residual(22) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
