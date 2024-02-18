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
    T = reg_model_v2_inv_v2.static_resid_tt(T, y, x, params);
end
residual = zeros(34, 1);
residual(1) = y(27);
residual(2) = y(28);
lhs = y(27);
rhs = params(3)*y(31)+y(29)*(1-params(8))*(1-params(3)*params(8))/params(8);
residual(3) = lhs - rhs;
lhs = y(27)-y(31);
rhs = x(4);
residual(4) = lhs - rhs;
lhs = y(28);
rhs = params(3)*y(32)+(1-params(3)*params(8))*(1-params(8))*y(30)/params(8);
residual(5) = lhs - rhs;
lhs = y(28)-y(32);
rhs = x(5);
residual(6) = lhs - rhs;
lhs = y(11)-y(9);
rhs = y(21)-y(22);
residual(7) = lhs - rhs;
lhs = y(12)-y(10);
rhs = y(21)-y(22);
residual(8) = lhs - rhs;
lhs = y(1)-y(9);
rhs = (1-params(16))*(y(21)-y(22));
residual(9) = lhs - rhs;
lhs = y(2)-y(10);
rhs = (1-params(17))*(y(21)-y(22));
residual(10) = lhs - rhs;
lhs = y(19);
rhs = params(16)*y(21)+(1-params(16))*y(22);
residual(11) = lhs - rhs;
lhs = y(20);
rhs = params(17)*y(21)+(1-params(17))*y(22);
residual(12) = lhs - rhs;
lhs = params(14)*y(3)+params(12)*y(1);
rhs = y(24)-y(19);
residual(13) = lhs - rhs;
lhs = params(14)*y(4)+params(12)*y(2);
rhs = y(25)-y(20);
residual(14) = lhs - rhs;
lhs = y(33);
rhs = (1-params(4))*y(5)-y(19);
residual(15) = lhs - rhs;
lhs = y(5)-y(33);
rhs = x(6);
residual(16) = lhs - rhs;
lhs = y(34);
rhs = (1-params(4))*y(6)-y(20);
residual(17) = lhs - rhs;
lhs = y(6)-y(34);
rhs = x(7);
residual(18) = lhs - rhs;
lhs = 0;
rhs = (y(23)-y(21))*params(3)*T(1);
residual(19) = lhs - rhs;
lhs = 0;
rhs = (y(23)-y(21))*params(3)*T(1);
residual(20) = lhs - rhs;
lhs = y(13);
rhs = y(16)+params(1)*y(5)+(1-params(1))*y(3);
residual(21) = lhs - rhs;
lhs = y(14);
rhs = y(17)+params(2)*y(6)+(1-params(2))*y(4);
residual(22) = lhs - rhs;
lhs = y(5)-y(3);
rhs = y(24)-y(23);
residual(23) = lhs - rhs;
lhs = y(6)-y(4);
rhs = y(25)-y(23);
residual(24) = lhs - rhs;
lhs = y(29);
rhs = params(1)*y(23)+(1-params(1))*y(24)-y(16)-y(21);
residual(25) = lhs - rhs;
lhs = y(30);
rhs = params(2)*y(23)+(1-params(2))*y(25)-y(17)-y(22);
residual(26) = lhs - rhs;
lhs = y(23);
rhs = y(23)*params(5)+(1-params(5))*(params(6)*y(26)+params(7)*y(15))+y(18);
residual(27) = lhs - rhs;
lhs = y(26);
rhs = T(11)*y(27)+y(28)*(1-T(11));
residual(28) = lhs - rhs;
lhs = y(15);
rhs = T(11)*y(13)+y(14)*(1-T(11));
residual(29) = lhs - rhs;
lhs = y(13);
rhs = T(12)*y(9)+T(13)*y(10)+y(7)*(1-T(12)-T(13));
residual(30) = lhs - rhs;
lhs = y(14);
rhs = T(14)*y(11)+T(15)*y(12)+y(8)*(1-T(14)-T(15));
residual(31) = lhs - rhs;
lhs = y(16);
rhs = y(16)*params(9)+x(1);
residual(32) = lhs - rhs;
lhs = y(17);
rhs = y(17)*params(10)+x(2);
residual(33) = lhs - rhs;
lhs = y(18);
rhs = y(18)*params(11)+x(3);
residual(34) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
