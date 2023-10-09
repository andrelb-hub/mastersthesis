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
    T = REG_MODEL.static_resid_tt(T, y, x, params);
end
residual = zeros(31, 1);
residual(1) = y(27);
residual(2) = y(28);
lhs = y(27);
rhs = params(2)*y(27)+y(29)*(1-params(7))*(1-params(2)*params(7))/params(7);
residual(3) = lhs - rhs;
lhs = y(28);
rhs = params(2)*y(28)+(1-params(2)*params(7))*(1-params(7))*y(30)/params(7);
residual(4) = lhs - rhs;
lhs = y(9);
rhs = (1-params(6))*y(9)+params(6)*y(14);
residual(5) = lhs - rhs;
lhs = y(10);
rhs = (1-params(6))*y(10)+params(6)*y(15);
residual(6) = lhs - rhs;
lhs = y(3)-y(5);
rhs = y(22)-y(21);
residual(7) = lhs - rhs;
lhs = y(4)-y(6);
rhs = y(22)-y(21);
residual(8) = lhs - rhs;
lhs = y(18);
rhs = y(1)+params(21)*y(21)+(1-params(21))*y(22);
residual(9) = lhs - rhs;
lhs = y(19);
rhs = y(2)+params(22)*y(21)+(1-params(22))*y(22);
residual(10) = lhs - rhs;
lhs = params(19)*y(7)-y(1)*(1-params(17));
rhs = y(25)-y(18);
residual(11) = lhs - rhs;
lhs = params(19)*y(8)-y(2)*(1-params(17));
rhs = y(25)-y(19);
residual(12) = lhs - rhs;
lhs = 0;
rhs = (1-params(2))*y(23);
residual(13) = lhs - rhs;
lhs = 0;
rhs = (1-params(2))*y(23);
residual(14) = lhs - rhs;
lhs = 0;
rhs = (y(24)-y(21))*T(1);
residual(15) = lhs - rhs;
lhs = 0;
rhs = T(1)*(y(24)-y(22));
residual(16) = lhs - rhs;
lhs = y(12);
rhs = y(16)+params(1)*y(9)+(1-params(1))*y(7);
residual(17) = lhs - rhs;
lhs = y(13);
rhs = y(17)+params(1)*y(10)+(1-params(1))*y(8);
residual(18) = lhs - rhs;
lhs = y(9)-y(7);
rhs = y(25)-y(24);
residual(19) = lhs - rhs;
lhs = y(10)-y(8);
rhs = y(25)-y(24);
residual(20) = lhs - rhs;
lhs = y(29);
rhs = params(1)*y(24)+(1-params(1))*y(25)-y(16)-y(21);
residual(21) = lhs - rhs;
lhs = y(30);
rhs = params(1)*y(24)+(1-params(1))*y(25)-y(17)-y(22);
residual(22) = lhs - rhs;
lhs = y(23);
rhs = y(23)*params(3)+(1-params(3))*(params(4)*y(26)+params(5)*y(11))+y(31);
residual(23) = lhs - rhs;
residual(24) = y(26);
lhs = y(11)+y(20);
rhs = params(12)*(y(21)+y(12))+(1-params(12))*(y(22)+y(13));
residual(25) = lhs - rhs;
lhs = y(11);
rhs = y(12)*params(13)+y(13)*(1-params(13));
residual(26) = lhs - rhs;
lhs = y(12);
rhs = y(3)*params(8)+y(5)*params(9)+y(14)*(1-params(8)-params(9));
residual(27) = lhs - rhs;
lhs = y(13);
rhs = y(4)*params(10)+y(6)*params(11)+y(15)*(1-params(10)-params(11));
residual(28) = lhs - rhs;
lhs = y(16);
rhs = y(16)*params(14)+x(1);
residual(29) = lhs - rhs;
lhs = y(17);
rhs = y(17)*params(15)+x(2);
residual(30) = lhs - rhs;
lhs = y(31);
rhs = y(31)*params(16)+x(3);
residual(31) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
