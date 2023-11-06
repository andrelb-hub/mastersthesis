function ds = dynamic_set_auxiliary_series(ds, params)
%
% Status : Computes Auxiliary variables of the dynamic model and returns a dseries
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

ds.AUX_ENDO_LEAD_23=(1+ds.rf(-1))*ds.e*params(1)/(ds.p(1)*ds.c(1));
ds.AUX_ENDO_LEAD_45=params(1)*ds.p/(ds.p(1)*ds.c(1))*(params(4)*(ds.k-ds.k(-1))+1-params(2)+ds.r);
end
