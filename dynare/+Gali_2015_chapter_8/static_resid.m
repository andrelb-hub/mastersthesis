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
    T = Gali_2015_chapter_8.static_resid_tt(T, y, x, params);
end
residual = zeros(29, 1);
lhs = y(2);
rhs = params(1)*y(2)+T(5)*y(1);
residual(1) = lhs - rhs;
lhs = y(1);
rhs = y(1)-(y(3)-y(2)-y(5))*1/T(2);
residual(2) = lhs - rhs;
lhs = y(4);
rhs = T(3)*y(22)+T(4)*y(24);
residual(3) = lhs - rhs;
lhs = y(5);
rhs = y(22)*(1-params(9))*T(3)*(-T(2))+y(24)*((1-params(7))*T(1)-T(2)*T(4))*(1-params(12));
residual(4) = lhs - rhs;
lhs = y(6);
rhs = T(2)*y(4)-(1-params(7))*T(1)*y(24);
residual(5) = lhs - rhs;
lhs = y(8);
rhs = T(2)*y(1);
residual(6) = lhs - rhs;
lhs = y(1);
rhs = y(7)-y(4);
residual(7) = lhs - rhs;
lhs = y(8);
rhs = y(9)-y(6);
residual(8) = lhs - rhs;
lhs = y(10);
rhs = y(2);
residual(9) = lhs - rhs;
lhs = y(7);
rhs = y(22)+(1-params(4))*y(11);
residual(10) = lhs - rhs;
lhs = y(12);
rhs = y(3)-y(2);
residual(11) = lhs - rhs;
lhs = y(23);
rhs = y(23)*params(10)+x(1);
residual(12) = lhs - rhs;
lhs = y(22);
rhs = y(22)*params(9)+x(2);
residual(13) = lhs - rhs;
lhs = y(24);
rhs = y(24)*params(12)+x(3);
residual(14) = lhs - rhs;
lhs = y(13)-y(18);
rhs = params(2)*y(15)+params(3)*y(11);
residual(15) = lhs - rhs;
lhs = y(14);
rhs = y(9)*params(7)*((params(2)*params(8)+(1-params(7))*(params(2)*params(8)-1))/params(2)-1)-y(24)*params(7)/params(2);
residual(16) = lhs - rhs;
lhs = y(14);
rhs = y(7)-y(15)-params(7)*y(9);
residual(17) = lhs - rhs;
residual(18) = y(21);
lhs = y(26);
rhs = y(3)*4;
residual(19) = lhs - rhs;
lhs = y(25);
rhs = y(12)*4;
residual(20) = lhs - rhs;
lhs = y(27);
rhs = y(5)*4;
residual(21) = lhs - rhs;
lhs = y(28);
rhs = y(10)*4;
residual(22) = lhs - rhs;
lhs = y(29);
rhs = y(2)*4;
residual(23) = lhs - rhs;
lhs = y(16);
rhs = y(7)-(y(7));
residual(24) = lhs - rhs;
lhs = y(17);
rhs = y(2)+y(17);
residual(25) = lhs - rhs;
lhs = y(18);
rhs = y(10)+y(18);
residual(26) = lhs - rhs;
lhs = y(9);
rhs = y(19)+x(4)-y(17);
residual(27) = lhs - rhs;
residual(28) = y(20);
lhs = y(3);
rhs = y(23)+y(2)*params(13)+y(16)*params(14);
residual(29) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
