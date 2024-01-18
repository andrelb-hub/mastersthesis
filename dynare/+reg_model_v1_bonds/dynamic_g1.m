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
    T = reg_model_v1_bonds.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(27, 43);
g1(1,4)=1;
g1(1,24)=(-1);
g1(1,30)=1;
g1(2,5)=1;
g1(2,25)=(-1);
g1(2,31)=1;
g1(3,30)=1;
g1(3,32)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(3,34)=(-params(1));
g1(4,30)=1;
g1(4,7)=(-1);
g1(4,42)=(-1);
g1(5,31)=1;
g1(5,33)=(-((1-params(5))*(1-params(1)*params(5))/params(5)));
g1(5,35)=(-params(1));
g1(6,31)=1;
g1(6,8)=(-1);
g1(6,43)=(-1);
g1(7,13)=(-1);
g1(7,15)=1;
g1(7,24)=(-1);
g1(7,25)=1;
g1(8,14)=(-1);
g1(8,16)=1;
g1(8,24)=(-1);
g1(8,25)=1;
g1(9,9)=1;
g1(9,13)=(-1);
g1(9,24)=(-(1-params(13)));
g1(9,25)=1-params(13);
g1(10,10)=1;
g1(10,14)=(-1);
g1(10,24)=(-(1-params(14)));
g1(10,25)=1-params(14);
g1(11,23)=1;
g1(11,24)=(-params(13));
g1(11,25)=(-(1-params(13)));
g1(12,9)=params(9);
g1(12,11)=params(11);
g1(12,23)=1;
g1(12,27)=(-1);
g1(13,10)=params(9);
g1(13,12)=params(11);
g1(13,23)=1;
g1(13,28)=(-1);
g1(14,9)=(-params(9));
g1(14,36)=params(9);
g1(14,23)=(-1);
g1(14,38)=1;
g1(14,26)=(-(1-params(1)));
g1(15,9)=(-1);
g1(15,36)=1;
g1(15,10)=1;
g1(15,37)=(-1);
g1(16,11)=(-1);
g1(16,18)=1;
g1(16,20)=(-1);
g1(17,12)=(-1);
g1(17,19)=1;
g1(17,21)=(-1);
g1(18,20)=1;
g1(18,24)=1;
g1(18,27)=(-1);
g1(18,32)=1;
g1(19,21)=1;
g1(19,25)=1;
g1(19,28)=(-1);
g1(19,33)=1;
g1(20,17)=(-((1-params(2))*params(4)));
g1(20,22)=(-1);
g1(20,6)=(-params(2));
g1(20,26)=1;
g1(20,29)=(-((1-params(2))*params(3)));
g1(21,29)=1;
g1(21,30)=(-T(6));
g1(21,31)=(-(1-T(6)));
g1(22,17)=1;
g1(22,18)=(-(T(4)/(T(4)+T(5))));
g1(22,19)=(-(1-T(4)/(T(4)+T(5))));
g1(23,9)=(-1);
g1(23,18)=1;
g1(23,23)=(-1);
g1(23,24)=1;
g1(24,10)=(-1);
g1(24,19)=1;
g1(24,23)=(-1);
g1(24,25)=1;
g1(25,1)=(-params(6));
g1(25,20)=1;
g1(25,39)=(-1);
g1(26,2)=(-params(7));
g1(26,21)=1;
g1(26,40)=(-1);
g1(27,3)=(-params(8));
g1(27,22)=1;
g1(27,41)=(-1);

end
