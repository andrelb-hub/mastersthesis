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
    T = REG_MODEL_remove_Pt.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(30, 50);
g1(1,5)=1;
g1(1,28)=(-1);
g1(1,34)=1;
g1(2,6)=1;
g1(2,29)=(-1);
g1(2,35)=1;
g1(3,34)=1;
g1(3,46)=(-params(2));
g1(3,36)=(-((1-params(7))*(1-params(2)*params(7))/params(7)));
g1(4,35)=1;
g1(4,47)=(-params(2));
g1(4,37)=(-((1-params(7))*(1-params(2)*params(7))/params(7)));
g1(5,1)=(-(1-params(6)));
g1(5,17)=1;
g1(5,22)=(-params(6));
g1(6,2)=(-(1-params(6)));
g1(6,18)=1;
g1(6,23)=(-params(6));
g1(7,11)=1;
g1(7,13)=(-1);
g1(7,28)=1;
g1(7,29)=(-1);
g1(8,12)=1;
g1(8,14)=(-1);
g1(8,28)=1;
g1(8,29)=(-1);
g1(9,9)=(-1);
g1(9,26)=1;
g1(9,28)=(-params(15));
g1(9,29)=(-(1-params(15)));
g1(10,10)=(-1);
g1(10,27)=1;
g1(10,28)=(-params(16));
g1(10,29)=(-(1-params(16)));
g1(11,9)=(-(1-params(11)));
g1(11,15)=params(13);
g1(11,26)=1;
g1(11,32)=(-1);
g1(12,10)=(-(1-params(11)));
g1(12,16)=params(13);
g1(12,27)=1;
g1(12,32)=(-1);
g1(13,9)=1-params(11);
g1(13,39)=(-(1-params(11)));
g1(13,26)=(-1);
g1(13,41)=1;
g1(13,30)=(-(1-params(2)));
g1(14,10)=1-params(11);
g1(14,40)=(-(1-params(11)));
g1(14,27)=(-1);
g1(14,42)=1;
g1(14,30)=(-(1-params(2)));
g1(15,9)=1-params(11);
g1(15,39)=(-(1-params(11)));
g1(15,26)=(-1);
g1(15,41)=1;
g1(15,28)=1;
g1(15,43)=T(17)-1;
g1(15,45)=(-T(17));
g1(16,10)=1-params(11);
g1(16,40)=(-(1-params(11)));
g1(16,27)=(-1);
g1(16,42)=1;
g1(16,29)=1;
g1(16,44)=T(17)-1;
g1(16,45)=(-T(17));
g1(17,15)=(-(1-params(1)));
g1(17,1)=(-params(1));
g1(17,20)=1;
g1(17,24)=(-1);
g1(18,16)=(-(1-params(1)));
g1(18,2)=(-params(1));
g1(18,21)=1;
g1(18,25)=(-1);
g1(19,15)=(-1);
g1(19,1)=1;
g1(19,31)=1;
g1(19,32)=(-1);
g1(20,16)=(-1);
g1(20,2)=1;
g1(20,31)=1;
g1(20,32)=(-1);
g1(21,24)=1;
g1(21,28)=1;
g1(21,31)=(-params(1));
g1(21,32)=(-(1-params(1)));
g1(21,36)=1;
g1(22,25)=1;
g1(22,29)=1;
g1(22,31)=(-params(1));
g1(22,32)=(-(1-params(1)));
g1(22,37)=1;
g1(23,19)=(-((1-params(3))*params(5)));
g1(23,7)=(-params(3));
g1(23,30)=1;
g1(23,33)=(-((1-params(3))*params(4)));
g1(23,38)=(-1);
g1(24,33)=1;
g1(24,34)=(-T(16));
g1(24,35)=(-(1-T(16)));
g1(25,19)=1;
g1(25,20)=(-T(16));
g1(25,21)=(-(1-T(16)));
g1(26,11)=(-T(14));
g1(26,13)=(-T(15));
g1(26,20)=1;
g1(26,22)=(-(1-T(14)-T(15)));
g1(27,12)=(-((1-params(15))*T(12)/T(11)));
g1(27,14)=(-((1-params(16))*T(13)/T(11)));
g1(27,21)=1;
g1(27,23)=(-T(18));
g1(28,3)=(-params(8));
g1(28,24)=1;
g1(28,48)=(-1);
g1(29,4)=(-params(9));
g1(29,25)=1;
g1(29,49)=(-1);
g1(30,8)=(-params(10));
g1(30,38)=1;
g1(30,50)=(-1);

end
