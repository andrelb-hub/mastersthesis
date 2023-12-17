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
M_.fname = 'm001_canonical_NK';
M_.dynare_version = '5.5';
oo_.dynare_version = '5.5';
options_.dynare_version = '5.5';
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
M_.endo_names = cell(9,1);
M_.endo_names_tex = cell(9,1);
M_.endo_names_long = cell(9,1);
M_.endo_names(1) = {'pit'};
M_.endo_names_tex(1) = {'{\hat{\pi}}'};
M_.endo_names_long(1) = {'Inflation Rate'};
M_.endo_names(2) = {'Pt'};
M_.endo_names_tex(2) = {'{\hat{P}}'};
M_.endo_names_long(2) = {'Price Level'};
M_.endo_names(3) = {'lambt'};
M_.endo_names_tex(3) = {'{\hat{\lambda}}'};
M_.endo_names_long(3) = {'Real Marginal Cost'};
M_.endo_names(4) = {'Lt'};
M_.endo_names_tex(4) = {'{\hat{L}}'};
M_.endo_names_long(4) = {'Labor'};
M_.endo_names(5) = {'Rt'};
M_.endo_names_tex(5) = {'{\hat{R}}'};
M_.endo_names_long(5) = {'Interest Rate'};
M_.endo_names(6) = {'Wt'};
M_.endo_names_tex(6) = {'{\hat{W}}'};
M_.endo_names_long(6) = {'Wage'};
M_.endo_names(7) = {'Yt'};
M_.endo_names_tex(7) = {'{\hat{Y}}'};
M_.endo_names_long(7) = {'Production'};
M_.endo_names(8) = {'ZAt'};
M_.endo_names_tex(8) = {'{\hat{Z}^A}'};
M_.endo_names_long(8) = {'Productivity'};
M_.endo_names(9) = {'ZMt'};
M_.endo_names_tex(9) = {'{\hat{Z}^M}'};
M_.endo_names_long(9) = {'Monetary Policy'};
M_.endo_partitions = struct();
M_.param_names = cell(13,1);
M_.param_names_tex = cell(13,1);
M_.param_names_long = cell(13,1);
M_.param_names(1) = {'siggma'};
M_.param_names_tex(1) = {'{\sigma}'};
M_.param_names_long(1) = {'Relative Risk Aversion'};
M_.param_names(2) = {'varphhi'};
M_.param_names_tex(2) = {'{\varphi}'};
M_.param_names_long(2) = {'Marginal Disutility of Labor Supply'};
M_.param_names(3) = {'phhi'};
M_.param_names_tex(3) = {'{\phi}'};
M_.param_names_long(3) = {'Labor Disutility Weight'};
M_.param_names(4) = {'betta'};
M_.param_names_tex(4) = {'{\beta}'};
M_.param_names_long(4) = {'Intertemporal Discount Factor'};
M_.param_names(5) = {'pssi'};
M_.param_names_tex(5) = {'{\psi}'};
M_.param_names_long(5) = {'Elasticity of Substitution between Intermediate Goods'};
M_.param_names(6) = {'thetta'};
M_.param_names_tex(6) = {'{\theta}'};
M_.param_names_long(6) = {'Price Stickness Parameter'};
M_.param_names(7) = {'gammaR'};
M_.param_names_tex(7) = {'{\gamma_R}'};
M_.param_names_long(7) = {'Interest-Rate Smoothing Parameter'};
M_.param_names(8) = {'gammaPI'};
M_.param_names_tex(8) = {'{\gamma_\pi}'};
M_.param_names_long(8) = {'Interest-Rate Sensitivity to Inflation'};
M_.param_names(9) = {'gammaY'};
M_.param_names_tex(9) = {'{\gamma_Y}'};
M_.param_names_long(9) = {'Interest-Rate Sensitivity to Product'};
M_.param_names(10) = {'rhoA'};
M_.param_names_tex(10) = {'{\rho_A}'};
M_.param_names_long(10) = {'Autoregressive Parameter of Productivity Shock'};
M_.param_names(11) = {'rhoM'};
M_.param_names_tex(11) = {'{\rho_M}'};
M_.param_names_long(11) = {'Autoregressive Parameter of Monetary Policy Shock'};
M_.param_names(12) = {'sigmaA'};
M_.param_names_tex(12) = {'{\sigma_A}'};
M_.param_names_long(12) = {'Productivity-Shock Standard Error'};
M_.param_names(13) = {'sigmaM'};
M_.param_names_tex(13) = {'{\sigma_M}'};
M_.param_names_long(13) = {'Monetary-Shock Standard Error'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 9;
M_.param_nbr = 13;
M_.orig_endo_nbr = 9;
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
M_.orig_eq_nbr = 9;
M_.eq_nbr = 9;
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
 0 5 14;
 1 6 0;
 0 7 0;
 0 8 0;
 2 9 0;
 0 10 0;
 0 11 15;
 3 12 0;
 4 13 0;]';
M_.nstatic = 3;
M_.nfwrd   = 2;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 4;
M_.ndynamic   = 6;
M_.dynamic_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Gross Inflation Rate' ;
  2 , 'name' , 'New Keynesian Phillips Curve' ;
  3 , 'name' , 'Labor Supply' ;
  4 , 'name' , 'Household Euler Equation' ;
  5 , 'name' , 'Real Marginal Cost' ;
  6 , 'name' , 'Production Function' ;
  7 , 'name' , 'Monetary Policy' ;
  8 , 'name' , 'Productivity Shock' ;
  9 , 'name' , 'Monetary Shock' ;
};
M_.mapping.pit.eqidx = [1 2 4 7 ];
M_.mapping.Pt.eqidx = [1 3 5 ];
M_.mapping.lambt.eqidx = [2 5 ];
M_.mapping.Lt.eqidx = [3 6 ];
M_.mapping.Rt.eqidx = [4 7 ];
M_.mapping.Wt.eqidx = [3 5 ];
M_.mapping.Yt.eqidx = [3 4 6 7 ];
M_.mapping.ZAt.eqidx = [5 6 8 ];
M_.mapping.ZMt.eqidx = [7 9 ];
M_.mapping.epsilonA.eqidx = [8 ];
M_.mapping.epsilonM.eqidx = [9 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [2 5 8 9 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(9, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(13, 1);
M_.endo_trends = struct('deflator', cell(9, 1), 'log_deflator', cell(9, 1), 'growth_factor', cell(9, 1), 'log_growth_factor', cell(9, 1));
M_.NNZDerivatives = [32; 0; -1; ];
M_.static_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 2;
siggma = M_.params(1);
M_.params(2) = 1.5;
varphhi = M_.params(2);
M_.params(3) = 1;
phhi = M_.params(3);
M_.params(4) = 0.985;
betta = M_.params(4);
M_.params(5) = 8;
pssi = M_.params(5);
M_.params(6) = 0.8;
thetta = M_.params(6);
M_.params(7) = 0.79;
gammaR = M_.params(7);
M_.params(8) = 2.43;
gammaPI = M_.params(8);
M_.params(9) = 0.16;
gammaY = M_.params(9);
M_.params(10) = 0.95;
rhoA = M_.params(10);
M_.params(11) = 0.9;
rhoM = M_.params(11);
M_.params(12) = 0.01;
sigmaA = M_.params(12);
M_.params(13) = 0.01;
sigmaM = M_.params(13);
steady;
options_.qz_zero_threshold = 1e-20;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (M_.params(12))^2;
M_.Sigma_e(2, 2) = (M_.params(13))^2;
options_.irf = 100;
options_.order = 1;
options_.qz_zero_threshold = 1e-20;
var_list_ = {'ZAt';'ZMt';'Yt';'Pt';'pit';'lambt';'Lt';'Rt';'Wt'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
write_latex_definitions;
write_latex_parameter_table;
collect_latex_files;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'm001_canonical_NK_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'm001_canonical_NK_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'm001_canonical_NK_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'm001_canonical_NK_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'm001_canonical_NK_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'm001_canonical_NK_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'm001_canonical_NK_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
