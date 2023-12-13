function [rp, gp, rpp, gpp, hp] = static_params_derivs(y, x, params)
%
% Status : Computes derivatives of the static model with respect to the parameters
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   rp        [M_.eq_nbr by #params] double    Jacobian matrix of static model equations with respect to parameters 
%                                              Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   gp        [M_.endo_nbr by M_.endo_nbr by #params] double    Derivative of the Jacobian matrix of the static model equations with respect to the parameters
%                                                           rows: variables in declaration order
%                                                           rows: equations in order of declaration
%   rpp       [#second_order_residual_terms by 4] double   Hessian matrix of second derivatives of residuals with respect to parameters;
%                                                              rows: respective derivative term
%                                                              1st column: equation number of the term appearing
%                                                              2nd column: number of the first parameter in derivative
%                                                              3rd column: number of the second parameter in derivative
%                                                              4th column: value of the Hessian term
%   gpp      [#second_order_Jacobian_terms by 5] double   Hessian matrix of second derivatives of the Jacobian with respect to the parameters;
%                                                              rows: respective derivative term
%                                                              1st column: equation number of the term appearing
%                                                              2nd column: column number of variable in Jacobian of the static model
%                                                              3rd column: number of the first parameter in derivative
%                                                              4th column: number of the second parameter in derivative
%                                                              5th column: value of the Hessian term
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

T = NaN(1,1);
T(1) = (-((-params(4))*(params(1)+params(1))))/(params(1)*params(1)*params(1)*params(1));
rp = zeros(9, 13);
rp(2, 4) = (-(y(1)+y(3)*(1-params(6))*(-params(6))/params(6)));
rp(2, 6) = (-((params(6)*((1-params(4)*params(6))*(-y(3))+y(3)*(1-params(6))*(-params(4)))-y(3)*(1-params(6))*(1-params(4)*params(6)))/(params(6)*params(6))));
rp(3, 1) = y(7);
rp(3, 2) = y(4);
rp(4, 1) = (y(5)-y(1))*(-params(4))/(params(1)*params(1));
rp(4, 4) = (y(5)-y(1))*1/params(1);
rp(7, 7) = (-(y(5)-(y(1)*params(8)+y(7)*params(9))));
rp(7, 8) = (-(y(1)*(1-params(7))));
rp(7, 9) = (-(y(7)*(1-params(7))));
rp(8, 10) = (-y(8));
rp(9, 11) = (-y(9));
gp = zeros(9, 9, 13);
gp(2, 1, 4) = (-1);
gp(2, 3, 4) = (-((1-params(6))*(-params(6))/params(6)));
gp(2, 3, 6) = (-((params(6)*((1-params(6))*(-params(4))-(1-params(4)*params(6)))-(1-params(6))*(1-params(4)*params(6)))/(params(6)*params(6))));
gp(3, 4, 2) = 1;
gp(3, 7, 1) = 1;
gp(4, 1, 1) = (-((-params(4))/(params(1)*params(1))));
gp(4, 1, 4) = (-(1/params(1)));
gp(4, 5, 1) = (-params(4))/(params(1)*params(1));
gp(4, 5, 4) = 1/params(1);
gp(7, 1, 7) = params(8);
gp(7, 1, 8) = (-(1-params(7)));
gp(7, 5, 7) = (-1);
gp(7, 7, 7) = params(9);
gp(7, 7, 9) = (-(1-params(7)));
gp(8, 8, 10) = (-1);
gp(9, 9, 11) = (-1);
if nargout >= 3
rpp = zeros(6,4);
rpp(1,1)=2;
rpp(1,2)=4;
rpp(1,3)=6;
rpp(1,4)=(-((params(6)*((-params(6))*(-y(3))-y(3)*(1-params(6)))-y(3)*(1-params(6))*(-params(6)))/(params(6)*params(6))));
rpp(2,1)=2;
rpp(2,2)=6;
rpp(2,3)=4;
rpp(2,4)=rpp(1,4);
rpp(3,1)=2;
rpp(3,2)=6;
rpp(3,3)=6;
rpp(3,4)=(-((params(6)*params(6)*params(6)*((-params(4))*(-y(3))+(-params(4))*(-y(3)))-(params(6)*((1-params(4)*params(6))*(-y(3))+y(3)*(1-params(6))*(-params(4)))-y(3)*(1-params(6))*(1-params(4)*params(6)))*(params(6)+params(6)))/(params(6)*params(6)*params(6)*params(6))));
rpp(4,1)=4;
rpp(4,2)=1;
rpp(4,3)=1;
rpp(4,4)=(y(5)-y(1))*T(1);
rpp(5,1)=4;
rpp(5,2)=1;
rpp(5,3)=4;
rpp(5,4)=(y(5)-y(1))*(-1)/(params(1)*params(1));
rpp(6,1)=4;
rpp(6,2)=4;
rpp(6,3)=1;
rpp(6,4)=rpp(5,4);
rpp(7,1)=7;
rpp(7,2)=7;
rpp(7,3)=8;
rpp(7,4)=y(1);
rpp(8,1)=7;
rpp(8,2)=8;
rpp(8,3)=7;
rpp(8,4)=rpp(7,4);
rpp(9,1)=7;
rpp(9,2)=7;
rpp(9,3)=9;
rpp(9,4)=y(7);
rpp(10,1)=7;
rpp(10,2)=9;
rpp(10,3)=7;
rpp(10,4)=rpp(9,4);
gpp = zeros(8,5);
gpp(1,1)=2;
gpp(1,2)=3;
gpp(1,3)=4;
gpp(1,4)=6;
gpp(1,5)=(-((params(6)*(params(6)-(1-params(6)))-(1-params(6))*(-params(6)))/(params(6)*params(6))));
gpp(2,1)=2;
gpp(2,2)=3;
gpp(2,3)=6;
gpp(2,4)=4;
gpp(2,5)=gpp(1,5);
gpp(3,1)=2;
gpp(3,2)=3;
gpp(3,3)=6;
gpp(3,4)=6;
gpp(3,5)=(-((params(6)*params(6)*params(6)*(params(4)+params(4))-(params(6)*((1-params(6))*(-params(4))-(1-params(4)*params(6)))-(1-params(6))*(1-params(4)*params(6)))*(params(6)+params(6)))/(params(6)*params(6)*params(6)*params(6))));
gpp(4,1)=4;
gpp(4,2)=1;
gpp(4,3)=1;
gpp(4,4)=1;
gpp(4,5)=(-T(1));
gpp(5,1)=4;
gpp(5,2)=1;
gpp(5,3)=1;
gpp(5,4)=4;
gpp(5,5)=(-((-1)/(params(1)*params(1))));
gpp(6,1)=4;
gpp(6,2)=1;
gpp(6,3)=4;
gpp(6,4)=1;
gpp(6,5)=gpp(5,5);
gpp(7,1)=4;
gpp(7,2)=5;
gpp(7,3)=1;
gpp(7,4)=1;
gpp(7,5)=T(1);
gpp(8,1)=4;
gpp(8,2)=5;
gpp(8,3)=1;
gpp(8,4)=4;
gpp(8,5)=(-1)/(params(1)*params(1));
gpp(9,1)=4;
gpp(9,2)=5;
gpp(9,3)=4;
gpp(9,4)=1;
gpp(9,5)=gpp(8,5);
gpp(10,1)=7;
gpp(10,2)=1;
gpp(10,3)=7;
gpp(10,4)=8;
gpp(10,5)=1;
gpp(11,1)=7;
gpp(11,2)=1;
gpp(11,3)=8;
gpp(11,4)=7;
gpp(11,5)=gpp(10,5);
gpp(12,1)=7;
gpp(12,2)=7;
gpp(12,3)=7;
gpp(12,4)=9;
gpp(12,5)=1;
gpp(13,1)=7;
gpp(13,2)=7;
gpp(13,3)=9;
gpp(13,4)=7;
gpp(13,5)=gpp(12,5);
end
if nargout >= 5
hp = zeros(0,5);
end
end
