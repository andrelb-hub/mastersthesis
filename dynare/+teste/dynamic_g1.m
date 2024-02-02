function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = teste.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(34, 58);
g1(1,4)=1;
g1(1,31)=(-1);
g1(1,37)=1;
g1(2,5)=1;
g1(2,32)=(-1);
g1(2,38)=1;
g1(3,37)=1;
g1(3,39)=(-((1-params(8))*(1-params(3)*params(8))/params(8)));
g1(3,41)=(-params(3));
g1(4,37)=1;
g1(4,7)=(-1);
g1(4,55)=(-1);
g1(5,38)=1;
g1(5,40)=(-((1-params(8))*(1-params(3)*params(8))/params(8)));
g1(5,42)=(-params(3));
g1(6,38)=1;
g1(6,8)=(-1);
g1(6,56)=(-1);
g1(7,19)=(-1);
g1(7,21)=1;
g1(7,31)=(-1);
g1(7,32)=1;
g1(8,20)=(-1);
g1(8,22)=1;
g1(8,31)=(-1);
g1(8,32)=1;
g1(9,11)=1;
g1(9,19)=(-1);
g1(9,31)=(-(1-params(16)));
g1(9,32)=1-params(16);
g1(10,12)=1;
g1(10,20)=(-1);
g1(10,31)=(-(1-params(17)));
g1(10,32)=1-params(17);
g1(11,29)=1;
g1(11,31)=(-params(16));
g1(11,32)=(-(1-params(16)));
g1(12,30)=1;
g1(12,31)=(-params(17));
g1(12,32)=(-(1-params(17)));
g1(13,11)=params(12);
g1(13,13)=params(14);
g1(13,29)=1;
g1(13,34)=(-1);
g1(14,12)=params(12);
g1(14,14)=params(14);
g1(14,30)=1;
g1(14,35)=(-1);
g1(15,15)=(-(1-params(4)));
g1(15,29)=1;
g1(15,43)=1;
g1(16,15)=1;
g1(16,9)=(-1);
g1(16,57)=(-1);
g1(17,16)=(-(1-params(4)));
g1(17,30)=1;
g1(17,44)=1;
g1(18,16)=1;
g1(18,10)=(-1);
g1(18,58)=(-1);
g1(19,11)=(-params(12));
g1(19,45)=params(12);
g1(19,29)=(-1);
g1(19,47)=1;
g1(19,31)=1;
g1(19,49)=params(3)*T(1)-1;
g1(19,51)=(-(params(3)*T(1)));
g1(20,12)=(-params(12));
g1(20,46)=params(12);
g1(20,30)=(-1);
g1(20,48)=1;
g1(20,49)=params(3)*T(1);
g1(20,32)=1;
g1(20,50)=(-1);
g1(20,51)=(-(params(3)*T(1)));
g1(21,13)=(-(1-params(1)));
g1(21,15)=(-params(1));
g1(21,23)=1;
g1(21,26)=(-1);
g1(22,14)=(-(1-params(2)));
g1(22,16)=(-params(2));
g1(22,24)=1;
g1(22,27)=(-1);
g1(23,13)=(-1);
g1(23,15)=1;
g1(23,33)=1;
g1(23,34)=(-1);
g1(24,14)=(-1);
g1(24,16)=1;
g1(24,33)=1;
g1(24,35)=(-1);
g1(25,26)=1;
g1(25,31)=1;
g1(25,33)=(-params(1));
g1(25,34)=(-(1-params(1)));
g1(25,39)=1;
g1(26,27)=1;
g1(26,32)=1;
g1(26,33)=(-params(2));
g1(26,35)=(-(1-params(2)));
g1(26,40)=1;
g1(27,25)=(-((1-params(5))*params(7)));
g1(27,28)=(-1);
g1(27,6)=(-params(5));
g1(27,33)=1;
g1(27,36)=(-((1-params(5))*params(6)));
g1(28,36)=1;
g1(28,37)=(-T(11));
g1(28,38)=(-(1-T(11)));
g1(29,23)=(-T(11));
g1(29,24)=(-(1-T(11)));
g1(29,25)=1;
g1(30,11)=(-T(9));
g1(30,17)=(-(1-T(9)));
g1(30,23)=1;
g1(31,12)=(-T(10));
g1(31,18)=(-(1-T(10)));
g1(31,24)=1;
g1(32,1)=(-params(9));
g1(32,26)=1;
g1(32,52)=(-1);
g1(33,2)=(-params(10));
g1(33,27)=1;
g1(33,53)=(-1);
g1(34,3)=(-params(11));
g1(34,28)=1;
g1(34,54)=(-1);

end
