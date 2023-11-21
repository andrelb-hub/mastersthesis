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
    T = REG_MODEL_v6a.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(22, 35);
g1(1,4)=1;
g1(1,22)=(-1);
g1(1,27)=1;
g1(2,4)=(-1);
g1(2,22)=1;
g1(2,5)=1;
g1(2,23)=(-1);
g1(3,27)=1;
g1(3,32)=(-params(1));
g1(3,28)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(4,11)=(-1);
g1(4,12)=1;
g1(4,13)=1;
g1(4,14)=(-1);
g1(5,7)=1;
g1(5,11)=(-1);
g1(5,22)=(-(1-params(13)));
g1(5,23)=1-params(13);
g1(6,7)=1/(1-params(13));
g1(6,8)=(-(1/(1-params(14))));
g1(6,11)=(-1)/(1-params(13));
g1(6,12)=(-((-1)/(1-params(14))));
g1(7,21)=1;
g1(7,22)=(-params(13));
g1(7,23)=(-(1-params(13)));
g1(8,7)=params(9);
g1(8,9)=params(11);
g1(8,21)=1;
g1(8,25)=(-1);
g1(9,7)=params(9);
g1(9,8)=(-params(9));
g1(9,9)=params(11);
g1(9,10)=(-params(11));
g1(9,25)=(-1);
g1(9,26)=1;
g1(10,7)=(-params(9));
g1(10,29)=params(9);
g1(10,21)=(-1);
g1(10,31)=1;
g1(10,24)=(-(1-params(1)));
g1(11,7)=(-1);
g1(11,29)=1;
g1(11,8)=1;
g1(11,30)=(-1);
g1(12,9)=(-1);
g1(12,16)=1;
g1(12,18)=(-1);
g1(13,10)=(-1);
g1(13,17)=1;
g1(13,19)=(-1);
g1(14,18)=1;
g1(14,22)=1;
g1(14,25)=(-1);
g1(14,28)=1;
g1(15,18)=(-1);
g1(15,19)=1;
g1(15,22)=(-1);
g1(15,23)=1;
g1(15,25)=1;
g1(15,26)=(-1);
g1(16,15)=(-((1-params(2))*params(4)));
g1(16,20)=(-1);
g1(16,6)=(-params(2));
g1(16,24)=1;
g1(16,27)=(-((1-params(2))*params(3)));
g1(17,15)=1;
g1(17,16)=(-T(5));
g1(17,17)=(-(1-T(5)));
g1(18,7)=(-1);
g1(18,16)=1;
g1(18,21)=(-1);
g1(18,22)=1;
g1(19,8)=(-1);
g1(19,17)=1;
g1(19,21)=(-1);
g1(19,23)=1;
g1(20,1)=(-params(6));
g1(20,18)=1;
g1(20,33)=(-1);
g1(21,2)=(-params(7));
g1(21,19)=1;
g1(21,34)=(-1);
g1(22,3)=(-params(8));
g1(22,20)=1;
g1(22,35)=(-1);

end
