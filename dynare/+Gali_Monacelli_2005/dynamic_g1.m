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
    T = Gali_Monacelli_2005.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(19, 29);
g1(1,8)=1;
g1(1,26)=(-1);
g1(1,11)=(-T(3));
g1(1,12)=T(3);
g1(2,8)=(-((1-params(7)*params(6))*(1-params(6))/params(6)*T(2)));
g1(3,11)=1;
g1(3,18)=T(4);
g1(3,27)=(-T(4));
g1(3,23)=(-((1-params(10))*(1+params(4))/T(2)*(-T(1))));
g1(4,10)=1;
g1(4,18)=(-T(5));
g1(4,23)=(-((1+params(4))/T(2)));
g1(5,8)=1;
g1(5,9)=(-1);
g1(5,10)=1;
g1(6,9)=1;
g1(6,13)=(-T(3));
g1(6,18)=(-1);
g1(7,1)=params(8);
g1(7,13)=(-params(8));
g1(7,14)=1;
g1(8,1)=(-1);
g1(8,13)=1;
g1(8,4)=1;
g1(8,17)=(-1);
g1(9,19)=1;
g1(10,9)=1;
g1(10,20)=(-1);
g1(10,23)=(-1);
g1(11,13)=(-(params(8)*((params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)-1)));
g1(11,21)=1;
g1(12,9)=1;
g1(12,13)=(-(params(8)*(params(1)*params(3)+(1-params(8))*(params(1)*params(2)-1))/params(1)));
g1(12,24)=(-1);
g1(13,20)=(-params(4));
g1(13,22)=1;
g1(13,24)=(-params(1));
g1(14,6)=(-params(10));
g1(14,23)=1;
g1(14,29)=(-1);
g1(15,5)=(-params(11));
g1(15,18)=1;
g1(15,28)=(-1);
g1(16,7)=1;
g1(17,14)=1;
g1(17,2)=1;
g1(17,15)=(-1);
g1(18,3)=1;
g1(18,16)=(-1);
g1(19,4)=1;
g1(19,17)=(-1);
g1(19,25)=1;

end
