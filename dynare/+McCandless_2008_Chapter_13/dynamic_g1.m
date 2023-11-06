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
    T = McCandless_2008_Chapter_13.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(16, 30);
g1(1,24)=(-((-(y(20)*y(25)))/(y(25)*y(24)*y(25)*y(24))));
g1(1,25)=(-((-(y(20)*y(24)))/(y(25)*y(24)*y(25)*y(24))));
g1(1,20)=(-(1/(y(25)*y(24))));
g1(1,26)=1;
g1(2,24)=(-((1+params(4)*(y(11)-y(1)))*(-(y(25)*y(14)))/(y(25)*y(24)*y(25)*y(24))));
g1(2,1)=(-(y(14)/(y(25)*y(24))*(-params(4))));
g1(2,11)=(-(y(14)/(y(25)*y(24))*params(4)));
g1(2,14)=(-((1+params(4)*(y(11)-y(1)))*1/(y(25)*y(24))));
g1(2,25)=(-((1+params(4)*(y(11)-y(1)))*(-(y(24)*y(14)))/(y(25)*y(24)*y(25)*y(24))));
g1(2,27)=1;
g1(3,8)=(-((-params(6))/(y(8)*y(8))));
g1(3,24)=(-((-(y(25)*params(1)*y(14)))/(y(25)*y(24)*y(25)*y(24))));
g1(3,14)=(-(params(1)/(y(25)*y(24))));
g1(3,25)=(-((-(y(24)*params(1)*y(14)))/(y(25)*y(24)*y(25)*y(24))));
g1(4,10)=(-y(14));
g1(4,13)=1;
g1(4,14)=(-y(10));
g1(5,8)=y(12);
g1(5,9)=y(1);
g1(5,1)=(-(params(4)/2*(-(2*(y(11)-y(1))))-y(9)-(1-params(2))));
g1(5,11)=(-(1+params(4)/2*2*(y(11)-y(1))));
g1(5,12)=y(8);
g1(5,13)=(-(1/y(14)));
g1(5,14)=(-((-y(13))/(y(14)*y(14))+(-(y(20)*y(18)))/(y(14)*y(14))-(-(y(20)*(1+y(7))*y(6)))/(y(14)*y(14))));
g1(5,6)=y(20)*(1+y(7))/y(14);
g1(5,18)=(-(y(20)/y(14)));
g1(5,7)=y(20)*y(6)/y(14);
g1(5,20)=(-(y(18)/y(14)-(1+y(7))*y(6)/y(14)));
g1(6,8)=(-1);
g1(6,1)=T(4)*(1-params(3))*y(17)*getPowerDeriv(y(1),params(3),1);
g1(6,12)=T(3)*getPowerDeriv(y(12),(-params(3)),1);
g1(6,17)=T(4)*(1-params(3))*T(2);
g1(7,9)=(-1);
g1(7,1)=T(7)*params(3)*y(17)*getPowerDeriv(y(1),params(3)-1,1);
g1(7,12)=T(6)*getPowerDeriv(y(12),1-params(3),1);
g1(7,17)=T(7)*params(3)*T(5);
g1(8,15)=y(21);
g1(8,6)=1+y(7);
g1(8,18)=(-1);
g1(8,7)=y(6);
g1(8,21)=y(15);
g1(9,15)=(-((-(y(18)*params(5)))/(y(15)*y(15))));
g1(9,18)=(-(params(5)/y(15)));
g1(9,19)=(-1);
g1(10,14)=1/y(15);
g1(10,15)=(-y(14))/(y(15)*y(15));
g1(10,20)=(-1);
g1(11,2)=y(16);
g1(11,13)=(-1);
g1(11,16)=y(2);
g1(12,5)=(-params(7));
g1(12,17)=1;
g1(12,28)=(-params(12));
g1(13,4)=(-params(8));
g1(13,16)=1;
g1(13,29)=(-params(13));
g1(14,3)=(-params(9));
g1(14,15)=1;
g1(14,30)=(-params(14));
g1(15,24)=(-((-(y(25)*(1+y(7))*y(20)*params(1)))/(y(25)*y(24)*y(25)*y(24))));
g1(15,25)=(-((-(y(24)*(1+y(7))*y(20)*params(1)))/(y(25)*y(24)*y(25)*y(24))));
g1(15,7)=(-(y(20)*params(1)/(y(25)*y(24))));
g1(15,20)=(-(params(1)*(1+y(7))/(y(25)*y(24))));
g1(15,22)=1;
g1(16,9)=(-T(1));
g1(16,24)=(-((params(4)*(y(11)-y(1))+1-params(2)+y(9))*(-(y(25)*params(1)*y(14)))/(y(25)*y(24)*y(25)*y(24))));
g1(16,1)=(-(T(1)*(-params(4))));
g1(16,11)=(-(params(4)*T(1)));
g1(16,14)=(-((params(4)*(y(11)-y(1))+1-params(2)+y(9))*params(1)/(y(25)*y(24))));
g1(16,25)=(-((params(4)*(y(11)-y(1))+1-params(2)+y(9))*(-(y(24)*params(1)*y(14)))/(y(25)*y(24)*y(25)*y(24))));
g1(16,23)=1;

end
