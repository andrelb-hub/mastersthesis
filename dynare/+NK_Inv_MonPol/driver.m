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
M_.fname = 'NK_Inv_MonPol';
M_.dynare_version = '5.4';
oo_.dynare_version = '5.4';
options_.dynare_version = '5.4';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'epsilonA'};
M_.exo_names_tex(1) = {'{\varepsilon_A}'};
M_.exo_names_long(1) = {'productivity shock'};
M_.exo_names(2) = {'epsilonM'};
M_.exo_names_tex(2) = {'{\varepsilon_M}'};
M_.exo_names_long(2) = {'monetary shock'};
M_.endo_names = cell(12,1);
M_.endo_names_tex = cell(12,1);
M_.endo_names_long = cell(12,1);
M_.endo_names(1) = {'PIt'};
M_.endo_names_tex(1) = {'{\tilde{\pi}}'};
M_.endo_names_long(1) = {'Inflation Rate'};
M_.endo_names(2) = {'Pt'};
M_.endo_names_tex(2) = {'{\hat{P}}'};
M_.endo_names_long(2) = {'Price Level'};
M_.endo_names(3) = {'LAMt'};
M_.endo_names_tex(3) = {'{\tilde{\lambda}}'};
M_.endo_names_long(3) = {'Real Marginal Cost'};
M_.endo_names(4) = {'Ct'};
M_.endo_names_tex(4) = {'{\hat{C}}'};
M_.endo_names_long(4) = {'Consumption'};
M_.endo_names(5) = {'Lt'};
M_.endo_names_tex(5) = {'{\hat{L}}'};
M_.endo_names_long(5) = {'Labor'};
M_.endo_names(6) = {'Rt'};
M_.endo_names_tex(6) = {'{\hat{R}}'};
M_.endo_names_long(6) = {'Interest Rate'};
M_.endo_names(7) = {'Kt'};
M_.endo_names_tex(7) = {'{\hat{K}}'};
M_.endo_names_long(7) = {'Capital'};
M_.endo_names(8) = {'It'};
M_.endo_names_tex(8) = {'{\hat{I}}'};
M_.endo_names_long(8) = {'Investment'};
M_.endo_names(9) = {'Wt'};
M_.endo_names_tex(9) = {'{\hat{W}}'};
M_.endo_names_long(9) = {'Wage'};
M_.endo_names(10) = {'ZAt'};
M_.endo_names_tex(10) = {'{\hat{Z}^A}'};
M_.endo_names_long(10) = {'Productivity'};
M_.endo_names(11) = {'Yt'};
M_.endo_names_tex(11) = {'{\hat{Y}}'};
M_.endo_names_long(11) = {'Production'};
M_.endo_names(12) = {'ZMt'};
M_.endo_names_tex(12) = {'{\hat{Z}^M}'};
M_.endo_names_long(12) = {'Monetary Policy'};
M_.endo_partitions = struct();
M_.param_names = cell(17,1);
M_.param_names_tex = cell(17,1);
M_.param_names_long = cell(17,1);
M_.param_names(1) = {'SIGMA'};
M_.param_names_tex(1) = {'{\sigma}'};
M_.param_names_long(1) = {'Relative Risk Aversion'};
M_.param_names(2) = {'PHI'};
M_.param_names_tex(2) = {'{\phi}'};
M_.param_names_long(2) = {'Labor Disutility Weight'};
M_.param_names(3) = {'VARPHI'};
M_.param_names_tex(3) = {'{\varphi}'};
M_.param_names_long(3) = {'Marginal Disutility of Labor Supply'};
M_.param_names(4) = {'BETA'};
M_.param_names_tex(4) = {'{\beta}'};
M_.param_names_long(4) = {'Intertemporal Discount Factor'};
M_.param_names(5) = {'DELTA'};
M_.param_names_tex(5) = {'{\delta}'};
M_.param_names_long(5) = {'Depreciation Rate'};
M_.param_names(6) = {'ALPHA'};
M_.param_names_tex(6) = {'{\alpha}'};
M_.param_names_long(6) = {'Output Elasticity of Capital'};
M_.param_names(7) = {'PSI'};
M_.param_names_tex(7) = {'{\psi}'};
M_.param_names_long(7) = {'Elasticity of Substitution between Intermediate Goods'};
M_.param_names(8) = {'THETA'};
M_.param_names_tex(8) = {'{\theta}'};
M_.param_names_long(8) = {'Price Stickness Parameter'};
M_.param_names(9) = {'gammaR'};
M_.param_names_tex(9) = {'{\gamma_R}'};
M_.param_names_long(9) = {'Interest-Rate Smoothing Parameter'};
M_.param_names(10) = {'gammaPI'};
M_.param_names_tex(10) = {'{\gamma_\pi}'};
M_.param_names_long(10) = {'Interest-Rate Sensitivity to Inflation'};
M_.param_names(11) = {'gammaY'};
M_.param_names_tex(11) = {'{\gamma_Y}'};
M_.param_names_long(11) = {'Interest-Rate Sensitivity to Product'};
M_.param_names(12) = {'rhoA'};
M_.param_names_tex(12) = {'{\rho_A}'};
M_.param_names_long(12) = {'Autoregressive Parameter of Productivity Shock'};
M_.param_names(13) = {'rhoM'};
M_.param_names_tex(13) = {'{\rho_M}'};
M_.param_names_long(13) = {'Autoregressive Parameter of Monetary Policy Shock'};
M_.param_names(14) = {'thetaC'};
M_.param_names_tex(14) = {'{\theta_C}'};
M_.param_names_long(14) = {'Consumption weight in Output'};
M_.param_names(15) = {'thetaI'};
M_.param_names_tex(15) = {'{\theta_I}'};
M_.param_names_long(15) = {'Investment weight in Output'};
M_.param_names(16) = {'sigmaA'};
M_.param_names_tex(16) = {'{\sigma_A}'};
M_.param_names_long(16) = {'Productivity-Shock Standard Error'};
M_.param_names(17) = {'sigmaM'};
M_.param_names_tex(17) = {'{\sigma_M}'};
M_.param_names_long(17) = {'Monetary-Shock Standard Error'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 12;
M_.param_nbr = 17;
M_.orig_endo_nbr = 12;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
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
M_.orig_eq_nbr = 12;
M_.eq_nbr = 12;
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
 0 6 18;
 1 7 19;
 0 8 0;
 0 9 20;
 0 10 0;
 2 11 21;
 3 12 0;
 0 13 0;
 0 14 0;
 4 15 0;
 0 16 0;
 5 17 0;]';
M_.nstatic = 5;
M_.nfwrd   = 2;
M_.npred   = 3;
M_.nboth   = 2;
M_.nsfwrd   = 4;
M_.nspred   = 5;
M_.ndynamic   = 7;
M_.dynamic_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Gross Inflation Rate' ;
  2 , 'name' , 'New Keynesian Phillips Curve' ;
  3 , 'name' , 'Labor Supply' ;
  4 , 'name' , 'Household Euler Equation' ;
  5 , 'name' , 'Law of Motion for Capital' ;
  6 , 'name' , 'Real Marginal Cost' ;
  7 , 'name' , 'Production Function' ;
  8 , 'name' , 'Marginal Rates of Substitution of Factors' ;
  9 , 'name' , 'Market Clearing Condition' ;
  10 , 'name' , 'Monetary Policy' ;
  11 , 'name' , 'Productivity Shock' ;
  12 , 'name' , 'Monetary Shock' ;
};
M_.mapping.PIt.eqidx = [1 2 10 ];
M_.mapping.Pt.eqidx = [1 3 4 6 ];
M_.mapping.LAMt.eqidx = [2 6 ];
M_.mapping.Ct.eqidx = [3 4 9 ];
M_.mapping.Lt.eqidx = [3 7 8 ];
M_.mapping.Rt.eqidx = [4 6 8 10 ];
M_.mapping.Kt.eqidx = [5 7 8 ];
M_.mapping.It.eqidx = [5 9 ];
M_.mapping.Wt.eqidx = [3 6 8 ];
M_.mapping.ZAt.eqidx = [6 7 11 ];
M_.mapping.Yt.eqidx = [7 9 10 ];
M_.mapping.ZMt.eqidx = [10 12 ];
M_.mapping.epsilonA.eqidx = [11 ];
M_.mapping.epsilonM.eqidx = [12 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [2 6 7 10 12 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(12, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(17, 1);
M_.endo_trends = struct('deflator', cell(12, 1), 'log_deflator', cell(12, 1), 'growth_factor', cell(12, 1), 'log_growth_factor', cell(12, 1));
M_.NNZDerivatives = [44; 0; -1; ];
M_.static_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 2;
SIGMA = M_.params(1);
M_.params(2) = 1;
PHI = M_.params(2);
M_.params(3) = 1.5;
VARPHI = M_.params(3);
M_.params(4) = 0.985;
BETA = M_.params(4);
M_.params(5) = 0.025;
DELTA = M_.params(5);
M_.params(6) = 0.35;
ALPHA = M_.params(6);
M_.params(7) = 8;
PSI = M_.params(7);
M_.params(8) = 0.8;
THETA = M_.params(8);
M_.params(9) = 0.79;
gammaR = M_.params(9);
M_.params(10) = 2.43;
gammaPI = M_.params(10);
M_.params(11) = 0.16;
gammaY = M_.params(11);
M_.params(12) = 0.95;
rhoA = M_.params(12);
M_.params(13) = 0.9;
rhoM = M_.params(13);
M_.params(14) = 0.8;
thetaC = M_.params(14);
M_.params(15) = 0.2;
thetaI = M_.params(15);
M_.params(16) = 0.01;
sigmaA = M_.params(16);
M_.params(17) = 0.01;
sigmaM = M_.params(17);
steady;
options_.qz_zero_threshold = 1e-20;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(16))^2;
M_.Sigma_e(2, 2) = (M_.params(17))^2;
options_.irf = 100;
options_.order = 1;
options_.qz_zero_threshold = 1e-20;
var_list_ = {'ZAt';'ZMt';'Yt';'Pt';'PIt';'LAMt';'Ct';'Lt';'Rt';'Kt';'It';'Wt'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
write_latex_definitions;
write_latex_parameter_table;
collect_latex_files;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'NK_Inv_MonPol_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_Inv_MonPol_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_Inv_MonPol_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_Inv_MonPol_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_Inv_MonPol_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_Inv_MonPol_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'NK_Inv_MonPol_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
