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
    T = McCandless_2008_Chapter_13.static_resid_tt(T, y, x, params);
end
residual = zeros(16, 1);
lhs = 0;
rhs = y(13)/(y(7)*y(3))-(1+y(12))*y(13)*params(1)/(y(7)*y(3));
residual(1) = lhs - rhs;
lhs = 0;
rhs = y(7)/(y(7)*y(3))-T(1)*(y(2)+1-params(2));
residual(2) = lhs - rhs;
lhs = 0;
rhs = params(6)/y(1)+T(1);
residual(3) = lhs - rhs;
lhs = 0;
rhs = y(7)*y(3)-y(6);
residual(4) = lhs - rhs;
lhs = 0;
rhs = y(4)+y(6)/y(7)+y(13)*y(11)/y(7)-y(1)*y(5)-y(4)*y(2)-y(4)*(1-params(2))-y(11)*y(13)*(1+y(12))/y(7);
residual(5) = lhs - rhs;
lhs = 0;
rhs = y(1)-T(3)*T(4);
residual(6) = lhs - rhs;
lhs = 0;
rhs = y(2)-T(6)*T(7);
residual(7) = lhs - rhs;
lhs = 0;
rhs = y(11)-y(11)*(1+y(12))-y(8)*y(14);
residual(8) = lhs - rhs;
lhs = 0;
rhs = y(12)-params(11)+y(11)*params(5)/y(8);
residual(9) = lhs - rhs;
lhs = 0;
rhs = y(13)-y(7)/y(8);
residual(10) = lhs - rhs;
lhs = 0;
rhs = y(6)-y(6)*y(9);
residual(11) = lhs - rhs;
lhs = y(10);
rhs = 1-params(7)+y(10)*params(7)+params(12)*x(1);
residual(12) = lhs - rhs;
lhs = y(9);
rhs = 1-params(8)+y(9)*params(8)+params(13)*x(2);
residual(13) = lhs - rhs;
lhs = y(8);
rhs = 1-params(9)+y(8)*params(9)+params(14)*x(3);
residual(14) = lhs - rhs;
lhs = y(15);
rhs = (1+y(12))*y(13)*params(1)/(y(7)*y(3));
residual(15) = lhs - rhs;
lhs = y(16);
rhs = T(1)*(y(2)+1-params(2));
residual(16) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
