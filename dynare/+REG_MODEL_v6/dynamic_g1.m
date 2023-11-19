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
    T = REG_MODEL_v6.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(25, 39);
g1(1,4)=1;
g1(1,22)=(-1);
g1(1,28)=1;
g1(2,5)=1;
g1(2,23)=(-1);
g1(2,29)=1;
g1(3,28)=1;
g1(3,35)=(-params(1));
g1(3,30)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(4,29)=1;
g1(4,36)=(-params(1));
g1(4,31)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(5,11)=(-1);
g1(5,13)=1;
g1(5,22)=(-1);
g1(5,23)=1;
g1(6,12)=(-1);
g1(6,14)=1;
g1(6,22)=(-1);
g1(6,23)=1;
g1(7,7)=1;
g1(7,11)=(-1);
g1(7,22)=(-(1-params(13)));
g1(7,23)=1-params(13);
g1(8,8)=1;
g1(8,12)=(-1);
g1(8,22)=(-(1-params(14)));
g1(8,23)=1-params(14);
g1(9,21)=1;
g1(9,22)=(-params(13));
g1(9,23)=(-(1-params(13)));
g1(10,7)=params(9);
g1(10,9)=params(11);
g1(10,21)=1;
g1(10,25)=(-1);
g1(11,8)=params(9);
g1(11,10)=params(11);
g1(11,21)=1;
g1(11,26)=(-1);
g1(12,7)=(-params(9));
g1(12,32)=params(9);
g1(12,21)=(-1);
g1(12,34)=1;
g1(12,24)=(-(1-params(1)));
g1(13,7)=(-1);
g1(13,32)=1;
g1(13,8)=1;
g1(13,33)=(-1);
g1(14,9)=(-1);
g1(14,16)=1;
g1(14,18)=(-1);
g1(15,10)=(-1);
g1(15,17)=1;
g1(15,19)=(-1);
g1(16,18)=1;
g1(16,22)=1;
g1(16,25)=(-1);
g1(16,30)=1;
g1(17,19)=1;
g1(17,23)=1;
g1(17,26)=(-1);
g1(17,31)=1;
g1(18,15)=(-((1-params(2))*params(4)));
g1(18,20)=(-1);
g1(18,6)=(-params(2));
g1(18,24)=1;
g1(18,27)=(-((1-params(2))*params(3)));
g1(19,27)=1;
g1(19,28)=(-T(6));
g1(19,29)=(-(1-T(6)));
g1(20,15)=1;
g1(20,16)=(-(T(4)/(T(4)+T(5))));
g1(20,17)=(-(1-T(4)/(T(4)+T(5))));
g1(21,7)=(-1);
g1(21,16)=1;
g1(21,21)=(-1);
g1(21,22)=1;
g1(22,8)=(-1);
g1(22,17)=1;
g1(22,21)=(-1);
g1(22,23)=1;
g1(23,1)=(-params(6));
g1(23,18)=1;
g1(23,37)=(-1);
g1(24,2)=(-params(7));
g1(24,19)=1;
g1(24,38)=(-1);
g1(25,3)=(-params(8));
g1(25,20)=1;
g1(25,39)=(-1);

end
