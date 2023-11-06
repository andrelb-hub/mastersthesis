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
M_.fname = 'Gali_2015_chapter_8';
M_.dynare_version = '5.5';
oo_.dynare_version = '5.5';
options_.dynare_version = '5.5';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(4,1);
M_.exo_names_tex = cell(4,1);
M_.exo_names_long = cell(4,1);
M_.exo_names(1) = {'eps_nu'};
M_.exo_names_tex(1) = {'{\varepsilon^\nu}'};
M_.exo_names_long(1) = {'monetary policy shock'};
M_.exo_names(2) = {'eps_a'};
M_.exo_names_tex(2) = {'{\varepsilon^a}'};
M_.exo_names_long(2) = {'technology shock'};
M_.exo_names(3) = {'eps_z'};
M_.exo_names_tex(3) = {'{\varepsilon^z}'};
M_.exo_names_long(3) = {'preference shock'};
M_.exo_names(4) = {'p_star'};
M_.exo_names_tex(4) = {'{p^*}'};
M_.exo_names_long(4) = {'world price level'};
M_.endo_names = cell(29,1);
M_.endo_names_tex = cell(29,1);
M_.endo_names_long = cell(29,1);
M_.endo_names(1) = {'y_gap'};
M_.endo_names_tex(1) = {'{\tilde{y}}'};
M_.endo_names_long(1) = {'output gap'};
M_.endo_names(2) = {'pi_h'};
M_.endo_names_tex(2) = {'{\pi_H}'};
M_.endo_names_long(2) = {'domestic inflation'};
M_.endo_names(3) = {'i'};
M_.endo_names_tex(3) = {'{i}'};
M_.endo_names_long(3) = {'nominal interest rate'};
M_.endo_names(4) = {'y_nat'};
M_.endo_names_tex(4) = {'{y^{n}}'};
M_.endo_names_long(4) = {'natural output'};
M_.endo_names(5) = {'r_nat'};
M_.endo_names_tex(5) = {'{r^{n}}'};
M_.endo_names_long(5) = {'natural interest rate'};
M_.endo_names(6) = {'s_nat'};
M_.endo_names_tex(6) = {'{s^{n}}'};
M_.endo_names_long(6) = {'natural terms of trade'};
M_.endo_names(7) = {'y'};
M_.endo_names_tex(7) = {'{y}'};
M_.endo_names_long(7) = {'output'};
M_.endo_names(8) = {'s_gap'};
M_.endo_names_tex(8) = {'{\tilde{s}}'};
M_.endo_names_long(8) = {'terms of trade gap'};
M_.endo_names(9) = {'s'};
M_.endo_names_tex(9) = {'{s}'};
M_.endo_names_long(9) = {'terms of trade'};
M_.endo_names(10) = {'pi'};
M_.endo_names_tex(10) = {'{\pi}'};
M_.endo_names_long(10) = {'CPI inflation'};
M_.endo_names(11) = {'n'};
M_.endo_names_tex(11) = {'{n}'};
M_.endo_names_long(11) = {'employment'};
M_.endo_names(12) = {'r_real'};
M_.endo_names_tex(12) = {'{r^r}'};
M_.endo_names_long(12) = {'real interest rate'};
M_.endo_names(13) = {'w'};
M_.endo_names_tex(13) = {'{w}'};
M_.endo_names_long(13) = {'nominal wage'};
M_.endo_names(14) = {'nx'};
M_.endo_names_tex(14) = {'{nx}'};
M_.endo_names_long(14) = {'net exports in terms of domestic outout'};
M_.endo_names(15) = {'c'};
M_.endo_names_tex(15) = {'{c}'};
M_.endo_names_long(15) = {'consumption'};
M_.endo_names(16) = {'yhat'};
M_.endo_names_tex(16) = {'{\hat y}'};
M_.endo_names_long(16) = {'output deviation from steady state'};
M_.endo_names(17) = {'p_h'};
M_.endo_names_tex(17) = {'{p_H}'};
M_.endo_names_long(17) = {'domestic price level'};
M_.endo_names(18) = {'p'};
M_.endo_names_tex(18) = {'{p}'};
M_.endo_names_long(18) = {'CPI'};
M_.endo_names(19) = {'er'};
M_.endo_names_tex(19) = {'{e}'};
M_.endo_names_long(19) = {'Nominal exchange rate'};
M_.endo_names(20) = {'d_er'};
M_.endo_names_tex(20) = {'{\Delta e}'};
M_.endo_names_long(20) = {'Nominal exchange rate growth'};
M_.endo_names(21) = {'y_star'};
M_.endo_names_tex(21) = {'{y^*}'};
M_.endo_names_long(21) = {'world output'};
M_.endo_names(22) = {'a'};
M_.endo_names_tex(22) = {'{a}'};
M_.endo_names_long(22) = {'AR(1) technology shock process'};
M_.endo_names(23) = {'nu'};
M_.endo_names_tex(23) = {'{\nu}'};
M_.endo_names_long(23) = {'AR(1) monetary policy shock process'};
M_.endo_names(24) = {'z'};
M_.endo_names_tex(24) = {'{z}'};
M_.endo_names_long(24) = {'AR(1) preference shock process'};
M_.endo_names(25) = {'r_real_ann'};
M_.endo_names_tex(25) = {'{r^{r,ann}}'};
M_.endo_names_long(25) = {'annualized real interest rate'};
M_.endo_names(26) = {'i_ann'};
M_.endo_names_tex(26) = {'{i^{ann}}'};
M_.endo_names_long(26) = {'annualized nominal interest rate'};
M_.endo_names(27) = {'r_nat_ann'};
M_.endo_names_tex(27) = {'{r^{nat,ann}}'};
M_.endo_names_long(27) = {'annualized natural interest rate'};
M_.endo_names(28) = {'pi_ann'};
M_.endo_names_tex(28) = {'{\pi^{ann}}'};
M_.endo_names_long(28) = {'annualized CPI inflation rate'};
M_.endo_names(29) = {'pi_h_ann'};
M_.endo_names_tex(29) = {'{\pi_H^{ann}}'};
M_.endo_names_long(29) = {'annualized domestic inflation rate'};
M_.endo_partitions = struct();
M_.param_names = cell(14,1);
M_.param_names_tex = cell(14,1);
M_.param_names_long = cell(14,1);
M_.param_names(1) = {'betta'};
M_.param_names_tex(1) = {'{\beta}'};
M_.param_names_long(1) = {'discount factor'};
M_.param_names(2) = {'siggma'};
M_.param_names_tex(2) = {'{\sigma}'};
M_.param_names_long(2) = {'inverse EIS'};
M_.param_names(3) = {'varphi'};
M_.param_names_tex(3) = {'{\varphi}'};
M_.param_names_long(3) = {'inverse Frisch elasticity'};
M_.param_names(4) = {'alppha'};
M_.param_names_tex(4) = {'{\alpha}'};
M_.param_names_long(4) = {'capital share'};
M_.param_names(5) = {'epsilon'};
M_.param_names_tex(5) = {'{\epsilon}'};
M_.param_names_long(5) = {'demand elasticity'};
M_.param_names(6) = {'theta'};
M_.param_names_tex(6) = {'{\theta}'};
M_.param_names_long(6) = {'Calvo parameter'};
M_.param_names(7) = {'upsilon'};
M_.param_names_tex(7) = {'{\upsilon}'};
M_.param_names_long(7) = {'openness parameter'};
M_.param_names(8) = {'eta'};
M_.param_names_tex(8) = {'{\eta}'};
M_.param_names_long(8) = {'substitutability foreign/domestic goods'};
M_.param_names(9) = {'rho_a'};
M_.param_names_tex(9) = {'{\rho_a}'};
M_.param_names_long(9) = {'autocorrelation technology shock'};
M_.param_names(10) = {'rho_nu'};
M_.param_names_tex(10) = {'{\rho_{\nu}}'};
M_.param_names_long(10) = {'autocorrelation monetary policy shock'};
M_.param_names(11) = {'rho_y_star'};
M_.param_names_tex(11) = {'{\rho_{y^*}}'};
M_.param_names_long(11) = {'autocorrelation world output growth shock'};
M_.param_names(12) = {'rho_z'};
M_.param_names_tex(12) = {'{\rho_{z}}'};
M_.param_names_long(12) = {'autocorrelation preference shock'};
M_.param_names(13) = {'phi_pi'};
M_.param_names_tex(13) = {'{\phi_{\pi}}'};
M_.param_names_long(13) = {'inflation feedback Taylor Rule'};
M_.param_names(14) = {'phi_y'};
M_.param_names_tex(14) = {'{\phi_{y}}'};
M_.param_names_long(14) = {'output feedback Taylor Rule'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 29;
M_.param_nbr = 14;
M_.orig_endo_nbr = 29;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
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
M_.orig_eq_nbr = 29;
M_.eq_nbr = 29;
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
 0 8 37;
 0 9 38;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 1 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 2 24 0;
 3 25 0;
 4 26 0;
 0 27 0;
 0 28 0;
 5 29 0;
 6 30 0;
 7 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;]';
M_.nstatic = 20;
M_.nfwrd   = 2;
M_.npred   = 7;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 7;
M_.ndynamic   = 9;
M_.dynamic_tmp_nbr = [5; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'New Keynesian Phillips Curve (eq. 37)' ;
  2 , 'name' , 'Dynamic IS Curve (eq. 29)' ;
  3 , 'name' , 'Natural output (eq. 35)' ;
  4 , 'name' , 'Natural rate of interest (eq. 38)' ;
  5 , 'name' , 'Natural terms of trade (below eq. (35))' ;
  6 , 'name' , 'Terms of trade gap (middle p. 238)' ;
  7 , 'name' , 'Output' ;
  8 , 'name' , ' Terms of trade, p. 238' ;
  9 , 'name' , 'CPI inflation (13)' ;
  10 , 'name' , 'Production function (eq. 32)' ;
  11 , 'name' , 'Definition real interest rate' ;
  12 , 'name' , 'Monetary policy shock, below eq. (39)' ;
  13 , 'name' , 'TFP shock, top of p. 233' ;
  14 , 'name' , 'Preference shock, top of p. 227' ;
  15 , 'name' , 'FOC wage, eq. (11)' ;
  16 , 'name' , 'net exports, eq. (31)' ;
  17 , 'name' , 'consumption determined by resource constraint, p. 236' ;
  18 , 'name' , 'World output growth shock' ;
  19 , 'name' , 'Annualized nominal interest rate' ;
  20 , 'name' , 'Annualized real interest rate' ;
  21 , 'name' , ' Annualized natural interest rate' ;
  22 , 'name' , 'Annualized CPI inflation' ;
  23 , 'name' , 'Annualized domestic inflation' ;
  24 , 'name' , 'Output deviation from steady state' ;
  25 , 'name' , 'Domestic price level, p. 229' ;
  26 , 'name' , 'CPI definition' ;
  27 , 'name' , 'Nominal exchange rate' ;
  28 , 'name' , 'Definiion exchange rate growth' ;
  29 , 'name' , 'Interest Rate Rule (eq. 39) (FDIT)' ;
};
M_.mapping.y_gap.eqidx = [1 2 6 7 ];
M_.mapping.pi_h.eqidx = [1 2 9 11 23 25 29 ];
M_.mapping.i.eqidx = [2 11 19 29 ];
M_.mapping.y_nat.eqidx = [3 5 7 ];
M_.mapping.r_nat.eqidx = [2 4 21 ];
M_.mapping.s_nat.eqidx = [5 8 ];
M_.mapping.y.eqidx = [7 10 17 24 ];
M_.mapping.s_gap.eqidx = [6 8 ];
M_.mapping.s.eqidx = [8 9 16 17 27 ];
M_.mapping.pi.eqidx = [9 22 26 ];
M_.mapping.n.eqidx = [10 15 ];
M_.mapping.r_real.eqidx = [11 20 ];
M_.mapping.w.eqidx = [15 ];
M_.mapping.nx.eqidx = [16 17 ];
M_.mapping.c.eqidx = [15 17 ];
M_.mapping.yhat.eqidx = [24 29 ];
M_.mapping.p_h.eqidx = [25 27 ];
M_.mapping.p.eqidx = [15 26 ];
M_.mapping.er.eqidx = [27 28 ];
M_.mapping.d_er.eqidx = [28 ];
M_.mapping.y_star.eqidx = [18 ];
M_.mapping.a.eqidx = [3 4 10 13 ];
M_.mapping.nu.eqidx = [12 29 ];
M_.mapping.z.eqidx = [3 4 5 14 16 ];
M_.mapping.r_real_ann.eqidx = [20 ];
M_.mapping.i_ann.eqidx = [19 ];
M_.mapping.r_nat_ann.eqidx = [21 ];
M_.mapping.pi_ann.eqidx = [22 ];
M_.mapping.pi_h_ann.eqidx = [23 ];
M_.mapping.eps_nu.eqidx = [12 ];
M_.mapping.eps_a.eqidx = [13 ];
M_.mapping.eps_z.eqidx = [14 ];
M_.mapping.p_star.eqidx = [27 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [9 17 18 19 22 23 24 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(29, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(14, 1);
M_.endo_trends = struct('deflator', cell(29, 1), 'log_deflator', cell(29, 1), 'growth_factor', cell(29, 1), 'log_growth_factor', cell(29, 1));
M_.NNZDerivatives = [85; 0; -1; ];
M_.static_tmp_nbr = [5; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
case_title='Flexible domestic inflation targeting (FDIT)';    
short_title='FDIT';
M_.params(1) = 0.99;
betta = M_.params(1);
M_.params(2) = 1;
siggma = M_.params(2);
M_.params(3) = 5;
varphi = M_.params(3);
M_.params(4) = 0.25;
alppha = M_.params(4);
M_.params(5) = 9;
epsilon = M_.params(5);
M_.params(6) = 0.75;
theta = M_.params(6);
M_.params(7) = 0.4;
upsilon = M_.params(7);
M_.params(10) = 0.5;
rho_nu = M_.params(10);
M_.params(9) = 0.9;
rho_a = M_.params(9);
M_.params(11) = 0;
rho_y_star = M_.params(11);
M_.params(13) = 1.5;
phi_pi = M_.params(13);
M_.params(14) = 0.125;
phi_y = M_.params(14);
M_.params(8) = 1;
eta = M_.params(8);
M_.params(12) = 0.5;
rho_z = M_.params(12);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0.0625;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 15;
options_.order = 1;
var_list_ = {'y_gap';'n';'pi_h_ann';'pi_ann';'p_h';'p';'s';'er';'i_ann';'r_real_ann'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
set_param_value('siggma',1);
set_param_value('eta',1);
set_param_value('upsilon',0.4);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 0;
M_.Sigma_e(4, 4) = 0;
options_.irf = 0;
options_.order = 1;
var_list_ = {'y';'y_gap';'pi_h';'pi';'s';'d_er'};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
y_pos=strmatch('y',var_list_ ,'exact');
y_gap_pos=strmatch('y_gap',var_list_ ,'exact');
pi_pos=strmatch('pi',var_list_ ,'exact');
pi_h_pos=strmatch('pi_h',var_list_ ,'exact');
s_pos=strmatch('s',var_list_ ,'exact');
d_er_pos=strmatch('d_er',var_list_ ,'exact');
par.upsilon=M_.params(strmatch('upsilon',M_.param_names,'exact'));
par.theta=M_.params(strmatch('theta',M_.param_names,'exact'));
par.alppha=M_.params(strmatch('alppha',M_.param_names,'exact'));
par.betta=M_.params(strmatch('betta',M_.param_names,'exact'));
par.epsilon=M_.params(strmatch('epsilon',M_.param_names,'exact'));
par.siggma=M_.params(strmatch('siggma',M_.param_names,'exact'));
par.varphi=M_.params(strmatch('varphi',M_.param_names,'exact'));
par.lambda=(1-par.theta)*(1-par.betta*par.theta)/par.theta*(1-par.alppha)/(1-par.alppha+par.alppha*par.epsilon);
variance.y=oo_.var(y_pos,y_pos);
variance.y_gap=oo_.var(y_gap_pos,y_gap_pos);
variance.pi_h=oo_.var(pi_h_pos,pi_h_pos);
variance.pi=oo_.var(pi_pos,pi_pos);
variance.s=oo_.var(s_pos,s_pos);
variance.d_er=oo_.var(d_er_pos,d_er_pos);
L=(1-par.upsilon)*0.5*(((1+par.varphi)/(1-par.alppha))*variance.y_gap+par.epsilon/par.lambda*variance.pi_h)/100;
labels={'sigma(y)';'sigma(tilde y)';'sigma(pi_h)';'sigma(pi)';'sigma(s)';'sigma(Delta e)';'L'};
headers={' ',short_title};
values=[sqrt([variance.y;variance.y_gap;variance.pi_h;variance.pi;variance.s;variance.d_er]);L];
options_.noprint=0;
dyntable(options_,'Table 8.1: Properties of simple policy rules',headers,labels,values,size(labels,2)+2,4,3)


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Gali_2015_chapter_8_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_2015_chapter_8_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_2015_chapter_8_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_2015_chapter_8_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_2015_chapter_8_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_2015_chapter_8_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Gali_2015_chapter_8_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
