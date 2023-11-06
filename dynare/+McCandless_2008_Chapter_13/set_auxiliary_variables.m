function y = set_auxiliary_variables(y, x, params)
%
% Status : Computes static model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

y(15)=(1+y(12))*y(13)*params(1)/(y(7)*y(3));
y(16)=y(7)*params(1)/(y(7)*y(3))*(y(2)+1-params(2));
end
