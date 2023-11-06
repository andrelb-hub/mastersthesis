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
    T = Gali_2015_chapter_8.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(29, 42);
g1(1,8)=(-T(5));
g1(1,9)=1;
g1(1,38)=(-params(1));
g1(2,8)=1;
g1(2,37)=(-1);
g1(2,38)=(-(1/T(2)));
g1(2,10)=1/T(2);
g1(2,12)=(-(1/T(2)));
g1(3,11)=1;
g1(3,29)=(-T(3));
g1(3,31)=(-T(4));
g1(4,12)=1;
g1(4,29)=(-((1-params(9))*T(3)*(-T(2))));
g1(4,31)=(-((1-params(12))*((1-params(7))*T(1)-T(2)*T(4))));
g1(5,11)=(-T(2));
g1(5,13)=1;
g1(5,31)=(1-params(7))*T(1);
g1(6,8)=(-T(2));
g1(6,15)=1;
g1(7,8)=1;
g1(7,11)=1;
g1(7,14)=(-1);
g1(8,13)=1;
g1(8,15)=1;
g1(8,16)=(-1);
g1(9,9)=(-1);
g1(9,1)=params(7);
g1(9,16)=(-params(7));
g1(9,17)=1;
g1(10,14)=1;
g1(10,18)=(-(1-params(4)));
g1(10,29)=(-1);
g1(11,38)=1;
g1(11,10)=(-1);
g1(11,19)=1;
g1(12,6)=(-params(10));
g1(12,30)=1;
g1(12,39)=(-1);
g1(13,5)=(-params(9));
g1(13,29)=1;
g1(13,40)=(-1);
g1(14,7)=(-params(12));
g1(14,31)=1;
g1(14,41)=(-1);
g1(15,18)=(-params(3));
g1(15,20)=1;
g1(15,22)=(-params(2));
g1(15,25)=(-1);
g1(16,16)=(-(params(7)*((params(2)*params(8)+(1-params(7))*(params(2)*params(8)-1))/params(2)-1)));
g1(16,21)=1;
g1(16,31)=params(7)/params(2);
g1(17,14)=(-1);
g1(17,16)=params(7);
g1(17,21)=1;
g1(17,22)=1;
g1(18,28)=1;
g1(19,10)=(-4);
g1(19,33)=1;
g1(20,19)=(-4);
g1(20,32)=1;
g1(21,12)=(-4);
g1(21,34)=1;
g1(22,17)=(-4);
g1(22,35)=1;
g1(23,9)=(-4);
g1(23,36)=1;
g1(24,14)=(-1);
g1(24,23)=1;
g1(25,9)=(-1);
g1(25,2)=(-1);
g1(25,24)=1;
g1(26,17)=(-1);
g1(26,3)=(-1);
g1(26,25)=1;
g1(27,16)=1;
g1(27,24)=1;
g1(27,26)=(-1);
g1(27,42)=(-1);
g1(28,4)=1;
g1(28,26)=(-1);
g1(28,27)=1;
g1(29,9)=(-params(13));
g1(29,10)=1;
g1(29,23)=(-params(14));
g1(29,30)=(-1);

end
