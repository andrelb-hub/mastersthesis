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
    T = REG_MODEL.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(31, 52);
g1(1,6)=1;
g1(1,30)=(-1);
g1(1,36)=1;
g1(2,7)=1;
g1(2,31)=(-1);
g1(2,37)=1;
g1(3,36)=1;
g1(3,48)=(-params(2));
g1(3,38)=(-((1-params(7))*(1-params(2)*params(7))/params(7)));
g1(4,37)=1;
g1(4,49)=(-params(2));
g1(4,39)=(-((1-params(7))*(1-params(2)*params(7))/params(7)));
g1(5,1)=(-(1-params(6)));
g1(5,18)=1;
g1(5,23)=(-params(6));
g1(6,2)=(-(1-params(6)));
g1(6,19)=1;
g1(6,24)=(-params(6));
g1(7,12)=1;
g1(7,14)=(-1);
g1(7,30)=1;
g1(7,31)=(-1);
g1(8,13)=1;
g1(8,15)=(-1);
g1(8,30)=1;
g1(8,31)=(-1);
g1(9,10)=(-1);
g1(9,27)=1;
g1(9,30)=(-params(21));
g1(9,31)=(-(1-params(21)));
g1(10,11)=(-1);
g1(10,28)=1;
g1(10,30)=(-params(22));
g1(10,31)=(-(1-params(22)));
g1(11,10)=(-(1-params(17)));
g1(11,16)=params(19);
g1(11,27)=1;
g1(11,34)=(-1);
g1(12,11)=(-(1-params(17)));
g1(12,17)=params(19);
g1(12,28)=1;
g1(12,34)=(-1);
g1(13,10)=1-params(17);
g1(13,41)=(-(1-params(17)));
g1(13,27)=(-1);
g1(13,43)=1;
g1(13,32)=(-(1-params(2)));
g1(14,11)=1-params(17);
g1(14,42)=(-(1-params(17)));
g1(14,28)=(-1);
g1(14,44)=1;
g1(14,32)=(-(1-params(2)));
g1(15,10)=1-params(17);
g1(15,41)=(-(1-params(17)));
g1(15,27)=(-1);
g1(15,43)=1;
g1(15,30)=1;
g1(15,45)=T(1)-1;
g1(15,47)=(-T(1));
g1(16,11)=1-params(17);
g1(16,42)=(-(1-params(17)));
g1(16,28)=(-1);
g1(16,44)=1;
g1(16,31)=1;
g1(16,46)=T(1)-1;
g1(16,47)=(-T(1));
g1(17,16)=(-(1-params(1)));
g1(17,1)=(-params(1));
g1(17,21)=1;
g1(17,25)=(-1);
g1(18,17)=(-(1-params(1)));
g1(18,2)=(-params(1));
g1(18,22)=1;
g1(18,26)=(-1);
g1(19,16)=(-1);
g1(19,1)=1;
g1(19,33)=1;
g1(19,34)=(-1);
g1(20,17)=(-1);
g1(20,2)=1;
g1(20,33)=1;
g1(20,34)=(-1);
g1(21,25)=1;
g1(21,30)=1;
g1(21,33)=(-params(1));
g1(21,34)=(-(1-params(1)));
g1(21,38)=1;
g1(22,26)=1;
g1(22,31)=1;
g1(22,33)=(-params(1));
g1(22,34)=(-(1-params(1)));
g1(22,39)=1;
g1(23,20)=(-((1-params(3))*params(5)));
g1(23,8)=(-params(3));
g1(23,32)=1;
g1(23,35)=(-((1-params(3))*params(4)));
g1(23,40)=(-1);
g1(24,5)=1;
g1(24,29)=(-1);
g1(24,35)=1;
g1(25,20)=1;
g1(25,21)=(-params(12));
g1(25,22)=(-(1-params(12)));
g1(25,29)=1;
g1(25,30)=(-params(12));
g1(25,31)=(-(1-params(12)));
g1(26,20)=1;
g1(26,21)=(-params(13));
g1(26,22)=(-(1-params(13)));
g1(27,12)=(-params(8));
g1(27,14)=(-params(9));
g1(27,21)=1;
g1(27,23)=(-(1-params(8)-params(9)));
g1(28,13)=(-params(10));
g1(28,15)=(-params(11));
g1(28,22)=1;
g1(28,24)=(-(1-params(10)-params(11)));
g1(29,3)=(-params(14));
g1(29,25)=1;
g1(29,50)=(-1);
g1(30,4)=(-params(15));
g1(30,26)=1;
g1(30,51)=(-1);
g1(31,9)=(-params(16));
g1(31,40)=1;
g1(31,52)=(-1);

end
