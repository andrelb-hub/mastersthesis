function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = Gali_2015_chapter_8.static_g1_tt(T, y, x, params);
end
g1 = zeros(29, 29);
g1(1,1)=(-T(5));
g1(1,2)=1-params(1);
g1(2,2)=(-(1/T(2)));
g1(2,3)=1/T(2);
g1(2,5)=(-(1/T(2)));
g1(3,4)=1;
g1(3,22)=(-T(3));
g1(3,24)=(-T(4));
g1(4,5)=1;
g1(4,22)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,24)=(-(((1-params(7))*T(1)-T(2)*T(4))*(1-params(12))));
g1(5,4)=(-T(2));
g1(5,6)=1;
g1(5,24)=(1-params(7))*T(1);
g1(6,1)=(-T(2));
g1(6,8)=1;
g1(7,1)=1;
g1(7,4)=1;
g1(7,7)=(-1);
g1(8,6)=1;
g1(8,8)=1;
g1(8,9)=(-1);
g1(9,2)=(-1);
g1(9,10)=1;
g1(10,7)=1;
g1(10,11)=(-(1-params(4)));
g1(10,22)=(-1);
g1(11,2)=1;
g1(11,3)=(-1);
g1(11,12)=1;
g1(12,23)=1-params(10);
g1(13,22)=1-params(9);
g1(14,24)=1-params(12);
g1(15,11)=(-params(3));
g1(15,13)=1;
g1(15,15)=(-params(2));
g1(15,18)=(-1);
g1(16,9)=(-(params(7)*((params(2)*params(8)+(1-params(7))*(params(2)*params(8)-1))/params(2)-1)));
g1(16,14)=1;
g1(16,24)=params(7)/params(2);
g1(17,7)=(-1);
g1(17,9)=params(7);
g1(17,14)=1;
g1(17,15)=1;
g1(18,21)=1;
g1(19,3)=(-4);
g1(19,26)=1;
g1(20,12)=(-4);
g1(20,25)=1;
g1(21,5)=(-4);
g1(21,27)=1;
g1(22,10)=(-4);
g1(22,28)=1;
g1(23,2)=(-4);
g1(23,29)=1;
g1(24,16)=1;
g1(25,2)=(-1);
g1(26,10)=(-1);
g1(27,9)=1;
g1(27,17)=1;
g1(27,19)=(-1);
g1(28,20)=1;
g1(29,2)=(-params(13));
g1(29,3)=1;
g1(29,16)=(-params(14));
g1(29,23)=(-1);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
