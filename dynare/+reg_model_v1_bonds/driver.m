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
M_.fname = 'reg_model_v1_bonds';
M_.dynare_version = '5.5';
oo_.dynare_version = '5.5';
options_.dynare_version = '5.5';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(5,1);
M_.exo_names_tex = cell(5,1);
M_.exo_names_long = cell(5,1);
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
M_.endo_names = cell(27,1);
M_.endo_names_tex = cell(27,1);
M_.endo_names_long = cell(27,1);
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
M_.endo_names(5) = {'C11t'};
M_.endo_names_tex(5) = {'{\hat{C}_{1 1}}'};
M_.endo_names_long(5) = {'Comsumption of good 1 in region 1'};
M_.endo_names(6) = {'C21t'};
M_.endo_names_tex(6) = {'{\hat{C}_{2 1}}'};
M_.endo_names_long(6) = {'Comsumption of good 1 in region 2'};
M_.endo_names(7) = {'C12t'};
M_.endo_names_tex(7) = {'{\hat{C}_{1 2}}'};
M_.endo_names_long(7) = {'Comsumption of good 2 in region 1'};
M_.endo_names(8) = {'C22t'};
M_.endo_names_tex(8) = {'{\hat{C}_{2 2}}'};
M_.endo_names_long(8) = {'Comsumption of good 2 in region 2'};
M_.endo_names(9) = {'Yt'};
M_.endo_names_tex(9) = {'{\hat{Y}}'};
M_.endo_names_long(9) = {'Total Production'};
M_.endo_names(10) = {'Y1t'};
M_.endo_names_tex(10) = {'{\hat{Y}_{1}}'};
M_.endo_names_long(10) = {'Production of region 1'};
M_.endo_names(11) = {'Y2t'};
M_.endo_names_tex(11) = {'{\hat{Y}_{2}}'};
M_.endo_names_long(11) = {'Production of region 2'};
M_.endo_names(12) = {'ZA1t'};
M_.endo_names_tex(12) = {'{\hat{Z}_{A1}}'};
M_.endo_names_long(12) = {'Production technology level of region 1'};
M_.endo_names(13) = {'ZA2t'};
M_.endo_names_tex(13) = {'{\hat{Z}_{A2}}'};
M_.endo_names_long(13) = {'Production technology level of region 2'};
M_.endo_names(14) = {'ZMt'};
M_.endo_names_tex(14) = {'{\hat{Z}_M}'};
M_.endo_names_long(14) = {'Monetary Policy'};
M_.endo_names(15) = {'Q1t'};
M_.endo_names_tex(15) = {'{\hat{Q}_{1}}'};
M_.endo_names_long(15) = {'Consumer price index of region 1'};
M_.endo_names(16) = {'P1t'};
M_.endo_names_tex(16) = {'{\hat{P}_{1}}'};
M_.endo_names_long(16) = {'Price level of region 1'};
M_.endo_names(17) = {'P2t'};
M_.endo_names_tex(17) = {'{\hat{P}_{2}}'};
M_.endo_names_long(17) = {'Price level of region 2'};
M_.endo_names(18) = {'Rt'};
M_.endo_names_tex(18) = {'{\hat{R}}'};
M_.endo_names_long(18) = {'Interest rate'};
M_.endo_names(19) = {'W1t'};
M_.endo_names_tex(19) = {'{\hat{W}_{1}}'};
M_.endo_names_long(19) = {'Region 1 Wage'};
M_.endo_names(20) = {'W2t'};
M_.endo_names_tex(20) = {'{\hat{W}_{2}}'};
M_.endo_names_long(20) = {'Region 2 Wage'};
M_.endo_names(21) = {'pit'};
M_.endo_names_tex(21) = {'{\hat{\pi}}'};
M_.endo_names_long(21) = {'National gross inflation rate'};
M_.endo_names(22) = {'pi1t'};
M_.endo_names_tex(22) = {'{\hat{\pi}_{1}}'};
M_.endo_names_long(22) = {'Gross inflation rate in region 1'};
M_.endo_names(23) = {'pi2t'};
M_.endo_names_tex(23) = {'{\hat{\pi}_{2}}'};
M_.endo_names_long(23) = {'Gross inflation rate in region 2'};
M_.endo_names(24) = {'lambda1t'};
M_.endo_names_tex(24) = {'{\hat{\lambda}_{1}}'};
M_.endo_names_long(24) = {'Marginal cost in region 1'};
M_.endo_names(25) = {'lambda2t'};
M_.endo_names_tex(25) = {'{\hat{\lambda}_{2}}'};
M_.endo_names_long(25) = {'Marginal cost in region 2'};
M_.endo_names(26) = {'pix1t'};
M_.endo_names_tex(26) = {'{\hat{\pi}_{x1}}'};
M_.endo_names_long(26) = {'Expected gross inflation rate in region 1'};
M_.endo_names(27) = {'pix2t'};
M_.endo_names_tex(27) = {'{\hat{\pi}_{x2}}'};
M_.endo_names_long(27) = {'Expected gross inflation rate in region 2'};
M_.endo_partitions = struct();
M_.param_names = cell(17,1);
M_.param_names_tex = cell(17,1);
M_.param_names_long = cell(17,1);
M_.param_names(1) = {'betta'};
M_.param_names_tex(1) = {'{\beta}'};
M_.param_names_long(1) = {'intertemporal discount factor'};
M_.param_names(2) = {'gammaR'};
M_.param_names_tex(2) = {'{\gamma_{R}}'};
M_.param_names_long(2) = {'interest-rate smoothing parameter'};
M_.param_names(3) = {'gammapi'};
M_.param_names_tex(3) = {'{\gamma_{pi}}'};
M_.param_names_long(3) = {'interest-rate sensitivity in relation to inflation'};
M_.param_names(4) = {'gammaY'};
M_.param_names_tex(4) = {'{\gamma_{Y}}'};
M_.param_names_long(4) = {'interest-rate sensitivity in relation to product'};
M_.param_names(5) = {'thetta'};
M_.param_names_tex(5) = {'{\theta}'};
M_.param_names_long(5) = {'price stickiness parameter'};
M_.param_names(6) = {'rhoA1'};
M_.param_names_tex(6) = {'{\rho_{A1}}'};
M_.param_names_long(6) = {'autoregressive parameter of productivity in region 1'};
M_.param_names(7) = {'rhoA2'};
M_.param_names_tex(7) = {'{\rho_{A2}}'};
M_.param_names_long(7) = {'autoregressive parameter of productivity in region 2'};
M_.param_names(8) = {'rhoM'};
M_.param_names_tex(8) = {'{\rho_{M}}'};
M_.param_names_long(8) = {'autoregressive parameter of monetary policy'};
M_.param_names(9) = {'siggma'};
M_.param_names_tex(9) = {'{\sigma}'};
M_.param_names_long(9) = {'relative risk aversion coefficient'};
M_.param_names(10) = {'phhi'};
M_.param_names_tex(10) = {'{\phi}'};
M_.param_names_long(10) = {'relative labor weight in utility'};
M_.param_names(11) = {'varphhi'};
M_.param_names_tex(11) = {'{\varphi}'};
M_.param_names_long(11) = {'marginal disutility of labor supply'};
M_.param_names(12) = {'pssi'};
M_.param_names_tex(12) = {'{\psi}'};
M_.param_names_long(12) = {'elasticity of substitution between intermediate goods'};
M_.param_names(13) = {'omega11'};
M_.param_names_tex(13) = {'{\omega_{11}}'};
M_.param_names_long(13) = {'weight of good 1 in consumption composition of region 1'};
M_.param_names(14) = {'omega21'};
M_.param_names_tex(14) = {'{\omega_{21}}'};
M_.param_names_long(14) = {'weight of good 1 in consumption composition of region 2'};
M_.param_names(15) = {'sigmaA1'};
M_.param_names_tex(15) = {'{\sigma_{A1}}'};
M_.param_names_long(15) = {'Standard Error of productivity shock 1'};
M_.param_names(16) = {'sigmaA2'};
M_.param_names_tex(16) = {'{\sigma_{A2}}'};
M_.param_names_long(16) = {'Standard Error of productivity shock 2'};
M_.param_names(17) = {'sigmaM'};
M_.param_names_tex(17) = {'{\sigma_M}'};
M_.param_names_long(17) = {'Standard Error of monetary shock'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 27;
M_.param_nbr = 17;
M_.orig_endo_nbr = 27;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
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
M_.orig_eq_nbr = 27;
M_.eq_nbr = 27;
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
 0 9 36;
 0 10 37;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 1 20 0;
 2 21 0;
 3 22 0;
 0 23 38;
 4 24 0;
 5 25 0;
 6 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 0 32 0;
 0 33 0;
 7 34 0;
 8 35 0;]';
M_.nstatic = 16;
M_.nfwrd   = 3;
M_.npred   = 8;
M_.nboth   = 0;
M_.nsfwrd   = 3;
M_.nspred   = 8;
M_.ndynamic   = 11;
M_.dynamic_tmp_nbr = [6; 0; 0; 0; ];
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
  11 , 'name' , 'Region 1 Price Index' ;
  12 , 'name' , 'Labor Supply' ;
  13 , 'name' , '13' ;
  14 , 'name' , 'Region 1 Euler equation for the bonds return' ;
  15 , 'name' , 'Euler equation for regional consumption' ;
  16 , 'name' , 'Production Function' ;
  17 , 'name' , 'Y2t' ;
  18 , 'name' , 'Marginal Cost' ;
  19 , 'name' , 'lambda2t' ;
  20 , 'name' , 'Monetary Policy' ;
  21 , 'name' , 'National Gross Inflation Rate' ;
  22 , 'name' , 'Market Clearing Condition' ;
  23 , 'name' , 'Regional Market Clearing Condition' ;
  24 , 'name' , '24' ;
  25 , 'name' , 'Productivity Shock' ;
  26 , 'name' , 'ZA2t' ;
  27 , 'name' , 'Monetary Shock' ;
};
M_.mapping.C1t.eqidx = [9 12 14 15 23 ];
M_.mapping.C2t.eqidx = [10 13 15 24 ];
M_.mapping.L1t.eqidx = [12 16 ];
M_.mapping.L2t.eqidx = [13 17 ];
M_.mapping.C11t.eqidx = [7 9 ];
M_.mapping.C21t.eqidx = [8 10 ];
M_.mapping.C12t.eqidx = [7 ];
M_.mapping.C22t.eqidx = [8 ];
M_.mapping.Yt.eqidx = [20 22 ];
M_.mapping.Y1t.eqidx = [16 22 23 ];
M_.mapping.Y2t.eqidx = [17 22 24 ];
M_.mapping.ZA1t.eqidx = [16 18 25 ];
M_.mapping.ZA2t.eqidx = [17 19 26 ];
M_.mapping.ZMt.eqidx = [20 27 ];
M_.mapping.Q1t.eqidx = [11 12 13 14 23 24 ];
M_.mapping.P1t.eqidx = [1 7 8 9 10 11 18 23 ];
M_.mapping.P2t.eqidx = [2 7 8 9 10 11 19 24 ];
M_.mapping.Rt.eqidx = [14 20 ];
M_.mapping.W1t.eqidx = [12 18 ];
M_.mapping.W2t.eqidx = [13 19 ];
M_.mapping.pit.eqidx = [20 21 ];
M_.mapping.pi1t.eqidx = [1 3 4 21 ];
M_.mapping.pi2t.eqidx = [2 5 6 21 ];
M_.mapping.lambda1t.eqidx = [3 18 ];
M_.mapping.lambda2t.eqidx = [5 19 ];
M_.mapping.pix1t.eqidx = [3 4 ];
M_.mapping.pix2t.eqidx = [5 6 ];
M_.mapping.e_A1.eqidx = [25 ];
M_.mapping.e_A2.eqidx = [26 ];
M_.mapping.e_M.eqidx = [27 ];
M_.mapping.sunspot1.eqidx = [4 ];
M_.mapping.sunspot2.eqidx = [6 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [12 13 14 16 17 18 26 27 ];
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(27, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(17, 1);
M_.endo_trends = struct('deflator', cell(27, 1), 'log_deflator', cell(27, 1), 'growth_factor', cell(27, 1), 'log_growth_factor', cell(27, 1));
M_.NNZDerivatives = [96; 0; -1; ];
M_.static_tmp_nbr = [6; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 0.985;
betta = M_.params(1);
M_.params(2) = 0.79;
gammaR = M_.params(2);
M_.params(3) = 2.43;
gammapi = M_.params(3);
M_.params(4) = 0.16;
gammaY = M_.params(4);
M_.params(5) = 0.8;
thetta = M_.params(5);
M_.params(6) = 0.95;
rhoA1 = M_.params(6);
M_.params(7) = 0.95;
rhoA2 = M_.params(7);
M_.params(8) = 0.9;
rhoM = M_.params(8);
M_.params(9) = 2;
siggma = M_.params(9);
M_.params(10) = 1;
phhi = M_.params(10);
M_.params(11) = 1.5;
varphhi = M_.params(11);
M_.params(12) = 8;
pssi = M_.params(12);
M_.params(13) = 0.7;
omega11 = M_.params(13);
M_.params(14) = 0.4;
omega21 = M_.params(14);
M_.params(15) = 0.01;
sigmaA1 = M_.params(15);
M_.params(16) = 0.01;
sigmaA2 = M_.params(16);
M_.params(17) = 0.01;
sigmaM = M_.params(17);
resid;
steady;
options_.qz_zero_threshold = 1e-20;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(3, 3) = (M_.params(17))^2;
options_.irf = 100;
options_.order = 1;
options_.qz_zero_threshold = 1e-20;
var_list_ = {'ZMt';'Y1t';'Y2t';'Rt';'L1t';'L2t';'Q1t';'W1t';'W2t';'Yt';'C1t';'C2t';'C11t';'C21t';'P1t';'C12t';'C22t';'P2t'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
write_latex_definitions;
write_latex_parameter_table;
collect_latex_files;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'reg_model_v1_bonds_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v1_bonds_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v1_bonds_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v1_bonds_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v1_bonds_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v1_bonds_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'reg_model_v1_bonds_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 2 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
