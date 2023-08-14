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
    T = NK_Inv_MonPol.static_resid_tt(T, y, x, params);
end
residual = zeros(12, 1);
residual(1) = y(1);
lhs = y(1);
rhs = T(2)*y(1)+y(3)*(1-params(8))*(1-T(2)*params(8))/params(8);
residual(2) = lhs - rhs;
lhs = params(3)*y(5)+params(1)*y(4);
rhs = y(9)-y(2);
residual(3) = lhs - rhs;
lhs = 0;
rhs = T(1)*params(4)*(y(6)-y(2))/params(1);
residual(4) = lhs - rhs;
lhs = y(7);
rhs = (1-params(5))*y(7)+params(5)*y(8);
residual(5) = lhs - rhs;
lhs = y(3);
rhs = params(6)*y(6)+(1-params(6))*y(9)-y(10)-y(2);
residual(6) = lhs - rhs;
lhs = y(11);
rhs = y(10)+params(6)*y(7)+(1-params(6))*y(5);
residual(7) = lhs - rhs;
lhs = y(7)-y(5);
rhs = y(9)-y(6);
residual(8) = lhs - rhs;
lhs = y(11);
rhs = y(4)*params(14)+y(8)*params(15);
residual(9) = lhs - rhs;
lhs = y(6);
rhs = y(6)*params(9)+(1-params(9))*(y(1)*params(10)+y(11)*params(11))+y(12);
residual(10) = lhs - rhs;
lhs = y(10);
rhs = y(10)*params(12)-x(1);
residual(11) = lhs - rhs;
lhs = y(12);
rhs = y(12)*params(13)+x(2);
residual(12) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
