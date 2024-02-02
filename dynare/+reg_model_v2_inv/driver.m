%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'reg_model_v2_inv';
M_.dynare_version = '5.5';
oo_.dynare_version = '5.5';
options_.dynare_version = '5.5';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(7,1);
M_.exo_names_tex = cell(7,1);
M_.exo_names_long = cell(7,1);
M_.exo_names(1) = {'e_A1'};
M_.exo_names_tex(1) = {'{\varepsilon_{A1}}'};
M_.exo_names_long(1) = {'productivity shock 1'};
M_.exo_names(2) = {'e_A2'};
M_.exo_names_tex(2) = {'{\varepsilon_{A2}}'};
M_.exo_names_long(2) = {'productivity shock 2'};
M_.exo_names(3) = {'e_M'};
M_.exo_names_tex(3) = {'{\varepsilon_{M}}'};
M_.exo_names_long(3) = {'monetary shock'};
M_.exo_names(4) = {'sunspot1'};
M_.exo_names_tex(4) = {'{sunspot_{1}}'};
M_.exo_names_long(4) = {'error of expected gross inflation rate in region 1'};
M_.exo_names(5) = {'sunspot2'};
M_.exo_names_tex(5) = {'{sunspot_{2}}'};
M_.exo_names_long(5) = {'error of expected gross inflation rate in region 2'};
M_.exo_names(6) = {'sunspotK1'};
M_.exo_names_tex(6) = {'{sunspot_{K1}}'};
M_.exo_names_long(6) = {'error of expected capital level in region 1'};
M_.exo_names(7) = {'sunspotK2'};
M_.exo_names_tex(7) = {'{sunspot_{K2}}'};
M_.exo_names_long(7) = {'error of expected capital level in region 2'};
M_.endo_names = cell(34,1);
M_.endo_names_tex = cell(34,1);
M_.endo_names_long = cell(34,1);
M_.endo_names(1) = {'C1t'};
M_.endo_names_tex(1) = {'{\hat{C}_{1}}'};
M_.endo_names_long(1) = {'Consumption aggregation of region 1'};
M_.endo_names(2) = {'C2t'};
M_.endo_names_tex(2) = {'{\hat{C}_{2}}'};
M_.endo_names_long(2) = {'Consumption aggregation of region 2'};
M_.endo_names(3) = {'L1t'};
M_.endo_names_tex(3) = {'{\hat{L}_{1}}'};
M_.endo_names_long(3) = {'Labor in region 1'};
M_.endo_names(4) = {'L2t'};
M_.endo_names_tex(4) = {'{\hat{L}_{2}}'};
M_.endo_names_long(4) = {'Labor in region 2'};
M_.endo_names(5) = {'K1t'};
M_.endo_names_tex(5) = {'{\hat{K}_{1}}'};
M_.endo_names_long(5) = {'Capital in region 1'};
M_.endo_names(6) = {'K2t'};
M_.endo_names_tex(6) = {'{\hat{K}_{2}}'};
M_.endo_names_long(6) = {'Capital in region 2'};
M_.endo_names(7) = {'I1t'};
M_.endo_names_tex(7) = {'{\hat{I}_{1}}'};
M_.endo_names_long(7) = {'Investment in region 1'};
M_.endo_names(8) = {'I2t'};
M_.endo_names_tex(8) = {'{\hat{I}_{2}}'};
M_.endo_names_long(8) = {'Investment in region 2'};
M_.endo_names(9) = {'C11t'};
M_.endo_names_tex(9) = {'{\hat{C}_{11}}'};
M_.endo_names_long(9) = {'Comsumption of good 1 in region 1'};
M_.endo_names(10) = {'C21t'};
M_.endo_names_tex(10) = {'{\hat{C}_{21}}'};
M_.endo_names_long(10) = {'Comsumption of good 1 in region 2'};
M_.endo_names(11) = {'C12t'};
M_.endo_names_tex(11) = {'{\hat{C}_{12}}'};
M_.endo_names_long(11) = {'Comsumption of good 2 in region 1'};
M_.endo_names(12) = {'C22t'};
M_.endo_names_tex(12) = {'{\hat{C}_{22}}'};
M_.endo_names_long(12) = {'Comsumption of good 2 in region 2'};
M_.endo_names(13) = {'Y1t'};
M_.endo_names_tex(13) = {'{\hat{Y}_{1}}'};
M_.endo_names_long(13) = {'Production of region 1'};
M_.endo_names(14) = {'Y2t'};
M_.endo_names_tex(14) = {'{\hat{Y}_{2}}'};
M_.endo_names_long(14) = {'Production of region 2'};
M_.endo_names(15) = {'Yt'};
M_.endo_names_tex(15) = {'{\hat{Y}}'};
M_.endo_names_long(15) = {'Total Production'};
M_.endo_names(16) = {'ZA1t'};
M_.endo_names_tex(16) = {'{\hat{Z}_{A1}}'};
M_.endo_names_long(16) = {'Production technology level of region 1'};
M_.endo_names(17) = {'ZA2t'};
M_.endo_names_tex(17) = {'{\hat{Z}_{A2}}'};
M_.endo_names_long(17) = {'Production technology level of region 2'};
M_.endo_names(18) = {'ZMt'};
M_.endo_names_tex(18) = {'{\hat{Z}_M}'};
M_.endo_names_long(18) = {'Monetary Policy'};
M_.endo_names(19) = {'Q1t'};
M_.endo_names_tex(19) = {'{\hat{Q}_{1}}'};
M_.endo_names_long(19) = {'Consumer price index of region 1'};
M_.endo_names(20) = {'Q2t'};
M_.endo_names_tex(20) = {'{\hat{Q}_{2}}'};
M_.endo_names_long(20) = {'Consumer price index of region 2'};
M_.endo_names(21) = {'P1t'};
M_.endo_names_tex(21) = {'{\hat{P}_{1}}'};
M_.endo_names_long(21) = {'Price level of region 1'};
M_.endo_names(22) = {'P2t'};
M_.endo_names_tex(22) = {'{\hat{P}_{2}}'};
M_.endo_names_long(22) = {'Price level of region 2'};
M_.endo_names(23) = {'Rt'};
M_.endo_names_tex(23) = {'{\hat{R}}'};
M_.endo_names_long(23) = {'Interest rate'};
M_.endo_names(24) = {'W1t'};
M_.endo_names_tex(24) = {'{\hat{W}_{1}}'};
M_.endo_names_long(24) = {'Region 1 Wage'};
M_.endo_names(25) = {'W2t'};
M_.endo_names_tex(25) = {'{\hat{W}_{2}}'};
M_.endo_names_long(25) = {'Region 2 Wage'};
M_.endo_names(26) = {'pit'};
M_.endo_names_tex(26) = {'{\hat{\pi}}'};
M_.endo_names_long(26) = {'National gross inflation rate'};
M_.endo_names(27) = {'pi1t'};
M_.endo_names_tex(27) = {'{\hat{\pi}_{1}}'};
M_.endo_names_long(27) = {'Gross inflation rate in region 1'};
M_.endo_names(28) = {'pi2t'};
M_.endo_names_tex(28) = {'{\hat{\pi}_{2}}'};
M_.endo_names_long(28) = {'Gross inflation rate in region 2'};
M_.endo_names(29) = {'lambda1t'};
M_.endo_names_tex(29) = {'{\hat{\lambda}_{1}}'};
M_.endo_names_long(29) = {'Marginal cost in region 1'};
M_.endo_names(30) = {'lambda2t'};
M_.endo_names_tex(30) = {'{\hat{\lambda}_{2}}'};
M_.endo_names_long(30) = {'Marginal cost in region 2'};
M_.endo_names(31) = {'pix1t'};
M_.endo_names_tex(31) = {'{\hat{\pi}_{x1}}'};
M_.endo_names_long(31) = {'Expected gross inflation rate in region 1'};
M_.endo_names(32) = {'pix2t'};
M_.endo_names_tex(32) = {'{\hat{\pi}_{x2}}'};
M_.endo_names_long(32) = {'Expected gross inflation rate in region 2'};
M_.endo_names(33) = {'Kx1t'};
M_.endo_names_tex(33) = {'{\hat{K}_{x1}}'};
M_.endo_names_long(33) = {'Expected Capital in region 1'};
M_.endo_names(34) = {'Kx2t'};
M_.endo_names_tex(34) = {'{\hat{K}_{x2}}'};
M_.endo_names_long(34) = {'Expected Capital in region 2'};
M_.endo_partitions = struct();
M_.param_names = cell(20,1);
M_.param_names_tex = cell(20,1);
M_.param_names_long = cell(20,1);
M_.param_names(1) = {'alpha1'};
M_.param_names_tex(1) = {'{\alpha_{1}}'};
M_.param_names_long(1) = {'capital weight on production of region 1'};
M_.param_names(2) = {'alpha2'};
M_.param_names_tex(2) = {'{\alpha_{2}}'};
M_.param_names_long(2) = {'capital weight on production of region 2'};
M_.param_names(3) = {'betta'};
M_.param_names_tex(3) = {'{\beta}'};
M_.param_names_long(3) = {'intertemporal discount factor'};
M_.param_names(4) = {'dellta'};
M_.param_names_tex(4) = {'{\delta}'};
M_.param_names_long(4) = {'capital depreciation rate'};
M_.param_names(5) = {'gammaR'};
M_.param_names_tex(5) = {'{\gamma_{R}}'};
M_.param_names_long(5) = {'interest-rate smoothing parameter'};
M_.param_names(6) = {'gammapi'};
M_.param_names_tex(6) = {'{\gamma_{pi}}'};
M_.param_names_long(6) = {'interest-rate sensitivity in relation to inflation'};
M_.param_names(7) = {'gammaY'};
M_.param_names_tex(7) = {'{\gamma_{Y}}'};
M_.param_names_long(7) = {'interest-rate sensitivity in relation to product'};
M_.param_names(8) = {'thetta'};
M_.param_names_tex(8) = {'{\theta}'};
M_.param_names_long(8) = {'price stickiness parameter'};
M_.param_names(9) = {'rhoA1'};
M_.param_names_tex(9) = {'{\rho_{A1}}'};
M_.param_names_long(9) = {'autoregressive parameter of productivity in region 1'};
M_.param_names(10) = {'rhoA2'};
M_.param_names_tex(10) = {'{\rho_{A2}}'};
M_.param_names_long(10) = {'autoregressive parameter of productivity in region 2'};
M_.param_names(11) = {'rhoM'};
M_.param_names_tex(11) = {'{\rho_{M}}'};
M_.param_names_long(11) = {'autoregressive parameter of monetary policy'};
M_.param_names(12) = {'siggma'};
M_.param_names_tex(12) = {'{\sigma}'};
M_.param_names_long(12) = {'relative risk aversion coefficient'};
M_.param_names(13) = {'phhi'};
M_.param_names_tex(13) = {'{\phi}'};
M_.param_names_long(13) = {'relative labor weight in utility'};
M_.param_names(14) = {'varphhi'};
M_.param_names_tex(14) = {'{\varphi}'};
M_.param_names_long(14) = {'marginal disutility of labor supply'};
M_.param_names(15) = {'pssi'};
M_.param_names_tex(15) = {'{\psi}'};
M_.param_names_long(15) = {'elasticity of substitution between intermediate goods'};
M_.param_names(16) = {'omega11'};
M_.param_names_tex(16) = {'{\omega_{11}}'};
M_.param_names_long(16) = {'weight of good 1 in consumption composition of region 1'};
M_.param_names(17) = {'omega21'};
M_.param_names_tex(17) = {'{\omega_{21}}'};
M_.param_names_long(17) = {'weight of good 1 in consumption composition of region 2'};
M_.param_names(18) = {'sigmaA1'};
M_.param_names_tex(18) = {'{\sigma_{A1}}'};
M_.param_names_long(18) = {'Standard Error of productivity shock 1'};
M_.param_names(19) = {'sigmaA2'};
M_.param_names_tex(19) = {'{\sigma_{A2}}'};
M_.param_names_long(19) = {'Standard Error of productivity shock 2'};
M_.param_names(20) = {'sigmaM'};
M_.param_names_tex(20) = {'{\sigma_M}'};
M_.param_names_long(20) = {'Standard Error of monetary shock'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 7;
M_.endo_nbr = 34;
M_.param_nbr = 20;
M_.orig_endo_nbr = 34;
M_.aux_vars = [];
options_.varobs = cell(3, 1);
options_.varobs(1)  = {'Yt'};
options_.varobs(2)  = {'Y1t'};
options_.varobs(3)  = {'Y2t'};
options_.varobs_id = [ 15 13 14  ];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(7, 7);
M_.Correlation_matrix = eye(7, 7);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 34;
M_.eq_nbr = 34;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 11 45;
 0 12 46;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 1 26 0;
 2 27 0;
 3 28 0;
 0 29 47;
 0 30 48;
 4 31 49;
 5 32 50;
 6 33 51;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 7 41 0;
 8 42 0;
 9 43 0;
 10 44 0;]';
M_.nstatic = 20;
M_.nfwrd   = 4;
M_.npred   = 7;
M_.nboth   = 3;
M_.nsfwrd   = 7;
M_.nspred   = 10;
M_.ndynamic   = 14;
M_.dynamic_tmp_nbr = [11; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Regional Gross Inflation Rate' ;
  2 , 'name' , 'pi2t' ;
  3 , 'name' , 'New Keynesian Phillips Curve' ;
  4 , 'name' , '4' ;
  5 , 'name' , '5' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'Regional Consumption Weight' ;
  8 , 'name' , '8' ;
  9 , 'name' , 'Regional Consumption of Good 1' ;
  10 , 'name' , '10' ;
  11 , 'name' , 'Regional Price Index' ;
  12 , 'name' , 'Q2t' ;
  13 , 'name' , 'Labor Supply' ;
  14 , 'name' , '14' ;
  15 , 'name' , 'Law of Motion for Capital' ;
  16 , 'name' , '16' ;
  17 , 'name' , 'Kx2t' ;
  18 , 'name' , '18' ;
  19 , 'name' , 'Euler equation for capital return' ;
  20 , 'name' , '20' ;
  21 , 'name' , 'Production Function' ;
  22 , 'name' , 'Y2t' ;
  23 , 'name' , 'Techincal and Economic MRSs' ;
  24 , 'name' , '24' ;
  25 , 'name' , 'Marginal Cost' ;
  26 , 'name' , 'lambda2t' ;
  27 , 'name' , 'Monetary Policy' ;
  28 , 'name' , 'National Gross Inflation Rate' ;
  29 , 'name' , 'Goods-Market Clearing Condition' ;
  30 , 'name' , 'Regional Goods-Market Clearing Condition' ;
  31 , 'name' , '31' ;
  32 , 'name' , 'Productivity Shock' ;
  33 , 'name' , 'ZA2t' ;
  34 , 'name' , 'Monetary Shock' ;
};
M_.mapping.C1t.eqidx = [9 13 19 30 ];
M_.mapping.C2t.eqidx = [10 14 20 31 ];
M_.mapping.L1t.eqidx = [13 21 23 ];
M_.mapping.L2t.eqidx = [14 22 24 ];
M_.mapping.K1t.eqidx = [15 16 21 23 ];
M_.mapping.K2t.eqidx = [17 18 22 24 ];
M_.mapping.I1t.eqidx = [30 ];
M_.mapping.I2t.eqidx = [31 ];
M_.mapping.C11t.eqidx = [7 9 ];
M_.mapping.C21t.eqidx = [8 10 ];
M_.mapping.C12t.eqidx = [7 ];
M_.mapping.C22t.eqidx = [8 ];
M_.mapping.Y1t.eqidx = [21 29 30 ];
M_.mapping.Y2t.eqidx = [22 29 31 ];
M_.mapping.Yt.eqidx = [27 29 ];
M_.mapping.ZA1t.eqidx = [21 25 32 ];
M_.mapping.ZA2t.eqidx = [22 26 33 ];
M_.mapping.ZMt.eqidx = [27 34 ];
M_.mapping.Q1t.eqidx = [11 13 15 19 ];
M_.mapping.Q2t.eqidx = [12 14 17 20 ];
M_.mapping.P1t.eqidx = [1 7 8 9 10 11 12 19 20 25 ];
M_.mapping.P2t.eqidx = [2 7 8 9 10 11 12 20 26 ];
M_.mapping.Rt.eqidx = [19 20 23 24 25 26 27 ];
M_.mapping.W1t.eqidx = [13 23 25 ];
M_.mapping.W2t.eqidx = [14 24 26 ];
M_.mapping.pit.eqidx = [27 28 ];
M_.mapping.pi1t.eqidx = [1 3 4 28 ];
M_.mapping.pi2t.eqidx = [2 5 6 28 ];
M_.mapping.lambda1t.eqidx = [3 25 ];
M_.mapping.lambda2t.eqidx = [5 26 ];
M_.mapping.pix1t.eqidx = [3 4 ];
M_.mapping.pix2t.eqidx = [5 6 ];
M_.mapping.Kx1t.eqidx = [15 16 ];
M_.mapping.Kx2t.eqidx = [17 18 ];
M_.mapping.e_A1.eqidx = [32 ];
M_.mapping.e_A2.eqidx = [33 ];
M_.mapping.e_M.eqidx = [34 ];
M_.mapping.sunspot1.eqidx = [4 ];
M_.mapping.sunspot2.eqidx = [6 ];
M_.mapping.sunspotK1.eqidx = [16 ];
M_.mapping.sunspotK2.eqidx = [18 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [16 17 18 21 22 23 31 32 33 34 ];
M_.exo_names_orig_ord = [1:7];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(34, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(7, 1);
M_.params = NaN(20, 1);
M_.endo_trends = struct('deflator', cell(34, 1), 'log_deflator', cell(34, 1), 'growth_factor', cell(34, 1), 'log_growth_factor', cell(34, 1));
M_.NNZDerivatives = [127; 0; -1; ];
M_.static_tmp_nbr = [11; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.4;
alpha1 = M_.params(1);
M_.params(2) = 0.3;
alpha2 = M_.params(2);
M_.params(3) = 0.985;
betta = M_.params(3);
M_.params(5) = 0.79;
gammaR = M_.params(5);
M_.params(6) = 2.43;
gammapi = M_.params(6);
M_.params(7) = 0.16;
gammaY = M_.params(7);
M_.params(4) = 0.025;
dellta = M_.params(4);
M_.params(8) = 0.8;
thetta = M_.params(8);
M_.params(9) = 0.95;
rhoA1 = M_.params(9);
M_.params(10) = 0.95;
rhoA2 = M_.params(10);
M_.params(11) = 0.9;
rhoM = M_.params(11);
M_.params(12) = 2;
siggma = M_.params(12);
M_.params(13) = 1;
phhi = M_.params(13);
M_.params(14) = 1.5;
varphhi = M_.params(14);
M_.params(15) = 8;
pssi = M_.params(15);
M_.params(16) = 0.7;
omega11 = M_.params(16);
M_.params(17) = 0.4;
omega21 = M_.params(17);
M_.params(18) = 0.01;
sigmaA1 = M_.params(18);
M_.params(19) = 0.01;
sigmaA2 = M_.params(19);
M_.params(20) = 0.01;
sigmaM = M_.params(20);
resid;
steady;
options_.qz_zero_threshold = 1e-20;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(3, 3) = (M_.params(20))^2;
options_.irf = 100;
options_.order = 1;
options_.qz_zero_threshold = 1e-20;
var_list_ = {'ZMt';'Rt';'I1t';'I2t';'K1t';'K2t';'lambda1t';'lambda2t';'Yt';'Y1t';'Y2t';'C1t';'C2t';'C11t';'C21t';'C12t';'C22t';'pi1t';'L1t';'L2t';'W1t';'W2t';'P1t';'P2t';'Q1t';'Q2t';'pi2t';'pit';'ZA1t';'ZA2t'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
estim_params_.var_exo = zeros(0, 10);
estim_params_.var_endo = zeros(0, 10);
estim_params_.corrx = zeros(0, 11);
estim_params_.corrn = zeros(0, 11);
estim_params_.param_vals = zeros(0, 10);
estim_params_.param_vals = [estim_params_.param_vals; 1, NaN, (-Inf), Inf, 5, NaN, NaN, 0.5, 1, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 2, NaN, (-Inf), Inf, 5, NaN, NaN, 0.5, 1, NaN ];
options_gsa = struct();
dynare_sensitivity(options_gsa);
write_latex_definitions;
write_latex_parameter_table;
collect_latex_files;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'reg_model_v2_inv_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v2_inv_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v2_inv_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v2_inv_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v2_inv_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v2_inv_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v2_inv_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
