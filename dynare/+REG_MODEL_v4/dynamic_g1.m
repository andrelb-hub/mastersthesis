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
    T = REG_MODEL_v4.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(32, 52);
g1(1,5)=1;
g1(1,29)=(-1);
g1(1,36)=1;
g1(2,6)=1;
g1(2,30)=(-1);
g1(2,37)=1;
g1(3,36)=1;
g1(3,48)=(-params(3));
g1(3,38)=(-((1-params(8))*(1-params(3)*params(8))/params(8)));
g1(4,37)=1;
g1(4,49)=(-params(3));
g1(4,39)=(-((1-params(8))*(1-params(3)*params(8))/params(8)));
g1(5,1)=(-(1-params(7)));
g1(5,17)=1;
g1(5,22)=(-params(7));
g1(6,2)=(-(1-params(7)));
g1(6,18)=1;
g1(6,23)=(-params(7));
g1(7,9)=1;
g1(7,11)=(-params(16));
g1(7,13)=(-(1-params(16)));
g1(8,10)=1;
g1(8,12)=(-params(17));
g1(8,14)=(-(1-params(17)));
g1(9,11)=1;
g1(9,12)=1;
g1(9,13)=(-1);
g1(9,14)=(-1);
g1(10,26)=1;
g1(10,29)=(-params(16));
g1(10,30)=(-(1-params(16)));
g1(11,27)=1;
g1(11,29)=(-params(17));
g1(11,30)=(-(1-params(17)));
g1(12,9)=params(12);
g1(12,15)=params(14);
g1(12,26)=1;
g1(12,33)=(-1);
g1(13,10)=params(12);
g1(13,16)=params(14);
g1(13,27)=1;
g1(13,34)=(-1);
g1(14,9)=(-params(12));
g1(14,41)=params(12);
g1(14,26)=(-1);
g1(14,43)=1;
g1(14,31)=(-(1-params(3)));
g1(15,10)=(-params(12));
g1(15,42)=params(12);
g1(15,27)=(-1);
g1(15,44)=1;
g1(15,31)=(-(1-params(3)));
g1(16,9)=(-params(12));
g1(16,41)=params(12);
g1(16,26)=(-1);
g1(16,43)=1;
g1(16,29)=1;
g1(16,45)=params(3)*T(1)-1;
g1(16,47)=(-(params(3)*T(1)));
g1(17,10)=(-params(12));
g1(17,42)=params(12);
g1(17,27)=(-1);
g1(17,44)=1;
g1(17,30)=1;
g1(17,46)=params(3)*T(1)-1;
g1(17,47)=(-(params(3)*T(1)));
g1(18,15)=(-(1-params(1)));
g1(18,1)=(-params(1));
g1(18,20)=1;
g1(18,24)=(-1);
g1(19,16)=(-(1-params(2)));
g1(19,2)=(-params(2));
g1(19,21)=1;
g1(19,25)=(-1);
g1(20,15)=(-1);
g1(20,1)=1;
g1(20,32)=1;
g1(20,33)=(-1);
g1(21,16)=(-1);
g1(21,2)=1;
g1(21,32)=1;
g1(21,34)=(-1);
g1(22,24)=1;
g1(22,29)=1;
g1(22,32)=(-params(1));
g1(22,33)=(-(1-params(1)));
g1(22,38)=1;
g1(23,25)=1;
g1(23,30)=1;
g1(23,32)=(-params(2));
g1(23,34)=(-(1-params(2)));
g1(23,39)=1;
g1(24,19)=(-((1-params(4))*params(6)));
g1(24,7)=(-params(4));
g1(24,31)=1;
g1(24,35)=(-((1-params(4))*params(5)));
g1(24,40)=(-1);
g1(25,35)=1;
g1(25,36)=(-T(12));
g1(25,37)=(-(1-T(12)));
g1(26,28)=1;
g1(26,29)=(-T(12));
g1(26,30)=(-(1-T(12)));
g1(27,19)=1;
g1(27,20)=(-T(12));
g1(27,21)=(-(1-T(12)));
g1(28,9)=(-T(11));
g1(28,20)=1;
g1(28,22)=(-(1-T(11)));
g1(29,10)=(-T(11));
g1(29,21)=1;
g1(29,23)=(-T(13));
g1(30,3)=(-params(9));
g1(30,24)=1;
g1(30,50)=(-1);
g1(31,4)=(-params(10));
g1(31,25)=1;
g1(31,51)=(-1);
g1(32,8)=(-params(11));
g1(32,40)=1;
g1(32,52)=(-1);

end
