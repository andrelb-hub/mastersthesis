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
M_.fname = 'McCandless_2008_Chapter_13';
M_.dynare_version = '5.5';
oo_.dynare_version = '5.5';
options_.dynare_version = '5.5';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(3,1);
M_.exo_names_tex = cell(3,1);
M_.exo_names_long = cell(3,1);
M_.exo_names(1) = {'eps_lambda'};
M_.exo_names_tex(1) = {'{\varepsilon^\lambda}'};
M_.exo_names_long(1) = {'TFP shock'};
M_.exo_names(2) = {'eps_g'};
M_.exo_names_tex(2) = {'{\varepsilon^g}'};
M_.exo_names_long(2) = {'Money growth shock'};
M_.exo_names(3) = {'eps_pstar'};
M_.exo_names_tex(3) = {'{\varepsilon^*}'};
M_.exo_names_long(3) = {'Foreign price level shock'};
M_.endo_names = cell(16,1);
M_.endo_names_tex = cell(16,1);
M_.endo_names_long = cell(16,1);
M_.endo_names(1) = {'w'};
M_.endo_names_tex(1) = {'W'};
M_.endo_names_long(1) = {'real wage'};
M_.endo_names(2) = {'r'};
M_.endo_names_tex(2) = {'r'};
M_.endo_names_long(2) = {'real return on capital'};
M_.endo_names(3) = {'c'};
M_.endo_names_tex(3) = {'C'};
M_.endo_names_long(3) = {'real consumption'};
M_.endo_names(4) = {'k'};
M_.endo_names_tex(4) = {'K'};
M_.endo_names_long(4) = {'capital stock'};
M_.endo_names(5) = {'h'};
M_.endo_names_tex(5) = {'H'};
M_.endo_names_long(5) = {'hours worked'};
M_.endo_names(6) = {'m'};
M_.endo_names_tex(6) = {'M'};
M_.endo_names_long(6) = {'money stock'};
M_.endo_names(7) = {'p'};
M_.endo_names_tex(7) = {'P'};
M_.endo_names_long(7) = {'price level'};
M_.endo_names(8) = {'pstar'};
M_.endo_names_tex(8) = {'{P^*}'};
M_.endo_names_long(8) = {'foreign price level'};
M_.endo_names(9) = {'g'};
M_.endo_names_tex(9) = {'g'};
M_.endo_names_long(9) = {'growth rate of money stock'};
M_.endo_names(10) = {'lambda'};
M_.endo_names_tex(10) = {'\lambda'};
M_.endo_names_long(10) = {'TFP'};
M_.endo_names(11) = {'b'};
M_.endo_names_tex(11) = {'B'};
M_.endo_names_long(11) = {'foreign bonds'};
M_.endo_names(12) = {'rf'};
M_.endo_names_tex(12) = {'{r^f}'};
M_.endo_names_long(12) = {'foreign interest rate'};
M_.endo_names(13) = {'e'};
M_.endo_names_tex(13) = {'e'};
M_.endo_names_long(13) = {'exchange rate'};
M_.endo_names(14) = {'x'};
M_.endo_names_tex(14) = {'X'};
M_.endo_names_long(14) = {'net exports'};
M_.endo_names(15) = {'AUX_ENDO_LEAD_23'};
M_.endo_names_tex(15) = {'AUX\_ENDO\_LEAD\_23'};
M_.endo_names_long(15) = {'AUX_ENDO_LEAD_23'};
M_.endo_names(16) = {'AUX_ENDO_LEAD_45'};
M_.endo_names_tex(16) = {'AUX\_ENDO\_LEAD\_45'};
M_.endo_names_long(16) = {'AUX_ENDO_LEAD_45'};
M_.endo_partitions = struct();
M_.param_names = cell(14,1);
M_.param_names_tex = cell(14,1);
M_.param_names_long = cell(14,1);
M_.param_names(1) = {'beta'};
M_.param_names_tex(1) = {'{\beta}'};
M_.param_names_long(1) = {'discount factor'};
M_.param_names(2) = {'delta'};
M_.param_names_tex(2) = {'{\delta}'};
M_.param_names_long(2) = {'depreciation rate'};
M_.param_names(3) = {'theta'};
M_.param_names_tex(3) = {'{\theta}'};
M_.param_names_long(3) = {'capital share production'};
M_.param_names(4) = {'kappa'};
M_.param_names_tex(4) = {'{\kappa}'};
M_.param_names_long(4) = {'capital adjustment cost'};
M_.param_names(5) = {'a'};
M_.param_names_tex(5) = {'{a}'};
M_.param_names_long(5) = {'risk premium'};
M_.param_names(6) = {'B'};
M_.param_names_tex(6) = {'{B}'};
M_.param_names_long(6) = {'composite labor disutility parameter'};
M_.param_names(7) = {'gamma_lambda'};
M_.param_names_tex(7) = {'{\gamma_\lambda}'};
M_.param_names_long(7) = {'autocorrelation TFP'};
M_.param_names(8) = {'gamma_g'};
M_.param_names_tex(8) = {'{\gamma_g}'};
M_.param_names_long(8) = {'autocorrelation money growth'};
M_.param_names(9) = {'gamma_pstar'};
M_.param_names_tex(9) = {'{\gamma_{P^*}}'};
M_.param_names_long(9) = {'autocorrelation foreign price'};
M_.param_names(10) = {'pistar'};
M_.param_names_tex(10) = {'{\pi^*}'};
M_.param_names_long(10) = {'foreign inflation'};
M_.param_names(11) = {'rstar'};
M_.param_names_tex(11) = {'{\r^*}'};
M_.param_names_long(11) = {'foreign interest rate'};
M_.param_names(12) = {'sigma_lambda'};
M_.param_names_tex(12) = {'{\sigma_\lambda}'};
M_.param_names_long(12) = {'standard deviation TFP shock'};
M_.param_names(13) = {'sigma_g'};
M_.param_names_tex(13) = {'{\sigma_g}'};
M_.param_names_long(13) = {'standard deviation money shock'};
M_.param_names(14) = {'sigma_pstar'};
M_.param_names_tex(14) = {'{\sigma_{P^*}}'};
M_.param_names_long(14) = {'standard deviation foreign price shock'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 16;
M_.param_nbr = 14;
M_.orig_endo_nbr = 14;
M_.aux_vars(1).endo_index = 15;
M_.aux_vars(1).type = 0;
M_.aux_vars(1).orig_expr = '(1+rf(-1))*e*beta/(p(1)*c(1))';
M_.aux_vars(2).endo_index = 16;
M_.aux_vars(2).type = 0;
M_.aux_vars(2).orig_expr = 'beta*p/(p(1)*c(1))*(kappa*(k-k(-1))+1-delta+r)';
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.orig_eq_nbr = 14;
M_.eq_nbr = 16;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 2;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 2;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 8 0;
 0 9 0;
 0 10 24;
 1 11 0;
 0 12 0;
 2 13 0;
 0 14 25;
 3 15 0;
 4 16 0;
 5 17 0;
 6 18 0;
 7 19 0;
 0 20 0;
 0 21 0;
 0 22 26;
 0 23 27;]';
M_.nstatic = 5;
M_.nfwrd   = 4;
M_.npred   = 7;
M_.nboth   = 0;
M_.nsfwrd   = 4;
M_.nspred   = 7;
M_.ndynamic   = 11;
M_.dynamic_tmp_nbr = [7; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Euler equation' ;
  2 , 'name' , 'FOC capital' ;
  3 , 'name' , 'FOC hours worked' ;
  4 , 'name' , 'cash in advance constraint' ;
  5 , 'name' , 'Budget constraint' ;
  6 , 'name' , 'Firm FOC labor' ;
  7 , 'name' , 'Firm FOC capital' ;
  8 , 'name' , 'Evolution foreign bonds' ;
  9 , 'name' , 'foreign interest rate' ;
  10 , 'name' , 'Definition exchange rate' ;
  11 , 'name' , 'Definition money growth' ;
  12 , 'name' , 'LOM TFP' ;
  13 , 'name' , 'LOM money' ;
  14 , 'name' , 'LOM foreign price' ;
};
M_.mapping.w.eqidx = [3 5 6 ];
M_.mapping.r.eqidx = [2 5 7 ];
M_.mapping.c.eqidx = [1 2 3 4 ];
M_.mapping.k.eqidx = [2 5 6 7 ];
M_.mapping.h.eqidx = [5 6 7 ];
M_.mapping.m.eqidx = [4 5 11 ];
M_.mapping.p.eqidx = [1 2 3 4 5 10 ];
M_.mapping.pstar.eqidx = [8 9 10 14 ];
M_.mapping.g.eqidx = [11 13 ];
M_.mapping.lambda.eqidx = [6 7 12 ];
M_.mapping.b.eqidx = [5 8 9 ];
M_.mapping.rf.eqidx = [1 5 8 9 ];
M_.mapping.e.eqidx = [1 5 10 ];
M_.mapping.x.eqidx = [8 ];
M_.mapping.eps_lambda.eqidx = [12 ];
M_.mapping.eps_g.eqidx = [13 ];
M_.mapping.eps_pstar.eqidx = [14 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [4 6 8 9 10 11 12 ];
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(16, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(14, 1);
M_.endo_trends = struct('deflator', cell(16, 1), 'log_deflator', cell(16, 1), 'growth_factor', cell(16, 1), 'log_growth_factor', cell(16, 1));
M_.NNZDerivatives = [71; -1; -1; ];
M_.static_tmp_nbr = [7; 1; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(4) = 0.5;
kappa = M_.params(4);
M_.params(1) = 0.99;
beta = M_.params(1);
M_.params(2) = 0.025;
delta = M_.params(2);
M_.params(3) = 0.36;
theta = M_.params(3);
M_.params(11) = 0.03;
rstar = M_.params(11);
M_.params(5) = 0.01;
a = M_.params(5);
M_.params(6) = (-2.58);
B = M_.params(6);
M_.params(7) = 0.95;
gamma_lambda = M_.params(7);
M_.params(8) = 0.95;
gamma_g = M_.params(8);
M_.params(9) = 0.95;
gamma_pstar = M_.params(9);
M_.params(12) = 0.01;
sigma_lambda = M_.params(12);
M_.params(13) = 0.01;
sigma_g = M_.params(13);
M_.params(14) = 0.01;
sigma_pstar = M_.params(14);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
M_.Sigma_e(3, 3) = (1)^2;
resid;
steady;
options_.irf = 100;
options_.order = 1;
options_.periods = 0;
var_list_ = {'k';'c';'w';'b';'m';'p';'e';'rf';'r'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'McCandless_2008_Chapter_13_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'McCandless_2008_Chapter_13_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'McCandless_2008_Chapter_13_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'McCandless_2008_Chapter_13_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'McCandless_2008_Chapter_13_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'McCandless_2008_Chapter_13_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'McCandless_2008_Chapter_13_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
