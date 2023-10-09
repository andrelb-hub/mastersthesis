% command to run dynare and write
% a new file with all the choices:
% dynare REG_MODEL savemacro=REG_MODEL_FINAL.mod

% -------------------------------------------------- %
% MODEL OPTIONS                                      %
% -------------------------------------------------- %

% Productivity Shock ON/OFF
    @#define ZA_SHOCK    = 0
% Productivity Shock sign: +/-
    @#define ZA_POSITIVE = 1
% Monetary Shock ON/OFF
    @#define ZM_SHOCK    = 1
% Monetary Shock sign: +/-
    @#define ZM_POSITIVE = 1

% -------------------------------------------------- %
% ENDOGENOUS VARIABLES                               %
% -------------------------------------------------- %

var
C1t      ${\hat{C}_{1}}$    (long_name='Consumption aggregation of region 1')
C2t      ${\hat{C}_{2}}$    (long_name='Consumption aggregation of region 2')
C11t     ${\hat{C}_{1 1}}$  (long_name='Comsumption of good 1 in region 1')
C21t     ${\hat{C}_{2 1}}$  (long_name='Comsumption of good 1 in region 2')
C12t     ${\hat{C}_{1 2}}$  (long_name='Comsumption of good 2 in region 1')
C22t     ${\hat{C}_{2 2}}$  (long_name='Comsumption of good 2 in region 2')
L1t      ${\hat{L}_{1}}$    (long_name='Labor in region 1')
L2t      ${\hat{L}_{2}}$    (long_name='Labor in region 2')
K1t      ${\hat{K}_{1}}$    (long_name='Capital in region 1')
K2t      ${\hat{K}_{2}}$    (long_name='Capital in region 2')
Yt       ${\hat{Y}}$        (long_name='Total Production')
Y1t      ${\hat{Y}_{1}}$    (long_name='Production of region 1')
Y2t      ${\hat{Y}_{2}}$    (long_name='Production of region 2')
I1t      ${\hat{I}_{1}}$    (long_name='Investment in region 1')
I2t      ${\hat{I}_{2}}$    (long_name='Investment in region 2')
ZA1      ${\hat{Z}_{A1}}$   (long_name='Production technology level of region 1')
ZA2      ${\hat{Z}_{A2}}$   (long_name='Production technology level of region 2')
E1t      ${\hat{\mathscr{E}}_{1}}$ (long_name='Total expense of region 1')
E2t      ${\hat{\mathscr{E}}_{2}}$ (long_name='Total expense of region 2')
Pt       ${\hat{P}}$        (long_name='National price level')
P1t      ${\hat{P}_{1}}$    (long_name='Price level of region 1')
P2t      ${\hat{P}_{2}}$    (long_name='Price level of region 2')
Rt       ${\hat{R}}$        (long_name='Interest rate')
RKt      ${\hat{R}_{K}}$    (long_name='Return on capital')
Wt       ${\hat{W}}$        (long_name='Wages')
pit      ${\hat{\pi}}$      (long_name='National gross inflation rate')
pi1t     ${\hat{\pi}_{1}}$  (long_name='Gross inflation rate in region 1')
pi2t     ${\hat{\pi}_{2}}$  (long_name='Gross inflation rate in region 2')
lambda1t ${\hat{\lambda}_{1}}$ (long_name='Marginal cost in region 1')
lambda2t ${\hat{\lambda}_{2}}$ (long_name='Marginal cost in region 2')
ZMt      ${\hat{Z}_M}$       (long_name='Monetary Policy')
;

% -------------------------------------------------- %
% LOCAL VARIABLES                                    %
% -------------------------------------------------- %

% the steady state variables are used as local variables for the linear model.

model_local_variable

% steady state variables used as locals:
  Pss ZA1ss ZA2ss ZMss piss pi1ss pi2ss Rss RKss LAMBDAss 
  Wss a1ss a2ss b1ss b2ss Y1ss Y2ss I1ss I2ss C1ss C2ss 
  E1ss E2ss C11ss C21ss C12ss C22ss K1ss K2ss L1ss L2ss

% -------------------------------------------------- %
% EXOGENOUS VARIABLES                                %
% -------------------------------------------------- %

varexo
  eA1 ${\varepsilon_{A1}}$   (long_name='productivity shock')
  eA1 ${\varepsilon_{A2}}$   (long_name='productivity shock')
  e_M ${\varepsilon_{M}}$    (long_name='monetary shock')
  ;

% -------------------------------------------------- %
% PARAMETERS                                         %
% -------------------------------------------------- %

parameters
alp     ${\alpha}$      (long_name='capital elasticity of production')
bet     ${\beta}$       (long_name='intertemporal discount factor')
gamR    ${\gamma_R}$    (long_name='interest-rate smoothing parameter')
gampi   ${\gamma_pi}$   (long_name='interest-rate sensitivity in relation to inflation')
gamY    ${\gamma_Y}$    (long_name='interest-rate sensitivity in relation to product')
del     ${\delta}$      (long_name='capital depreciation rate')
the     ${\theta}$      (long_name='price stickiness parameter')
theC11  ${\theta_C11}$  (long_name='weight of good 1 in demand of region 1')
theC12  ${\theta_C12}$  (long_name='weight of good 2 in demand of region 1')
theC21  ${\theta_C21}$  (long_name='weight of good 1 in demand of region 2')
theC22  ${\theta_C22}$  (long_name='weight of good 2 in demand of region 2')
thePY1  ${\theta_PY1}$  (long_name='weight of region 1 in gross domestic product')
theY1   ${\theta_Y1}$   (long_name='weight of region 1 in total production')
rhoA1   ${\rho_A1}$     (long_name='autoregressive parameter of productivity in region 1')
rhoA2   ${\rho_A2}$     (long_name='autoregressive parameter of productivity in region 2')
rhoM    ${\rho_M}$      (long_name='autoregressive parameter of monetary policy')
sig     ${\sigma}$      (long_name='relative risk aversion coefficient')
phi     ${\phi}$        (long_name='relative labor weight in utility')
varp    ${\varphi}$     (long_name='marginal disutility of labor supply')
psi     ${\psi}$        (long_name='elasticity of substitution between intermediate goods')
ome11   ${\omega_11}$   (long_name='weight of good 1 in consumption composition of region 1')
ome21   ${\omega_21}$   (long_name='weight of good 1 in consumption composition of region 2')

% -------------------------------------------------- % 
% standard errors of stochastic shocks               %
% -------------------------------------------------- %

sigmaA1 ${\sigma_{A1}}$  (long_name='Standard Error of productivity shock 1')
sigmaA2 ${\sigma_{A2}}$  (long_name='Standard Error of productivity shock 2')
sigmaM  ${\sigma_M}$     (long_name='Standard Error of monetary shock')
;

% -------------------------------------------------- %
% parameters values                                  %
% -------------------------------------------------- % 

alp     = 0.35 ; % capital elasticity of production
bet     = 0.985; % intertemporal discount factor
gamR    = 0.79 ; % interest-rate smoothing parameter
gampi   = 2.43 ; % interest-rate sensitivity in relation to inflation
gamY    = 0.16 ; % interest-rate sensitivity in relation to product
del     = 0.025; % capital depreciation rate
the     = 0.8  ; % price stickiness parameter
theC11  = 0.85 ; % weight of good 1 in demand of region 1
theC12  = 0.05 ; % weight of good 2 in demand of region 1
theC21  = 0.25 ; % weight of good 1 in demand of region 2
theC22  = 0.7  ; % weight of good 2 in demand of region 2
thePY1  = 0.6  ; % weight of region 1 in gross domestic product
theY1   = 0.6  ; % weight of region 1 in total production
rhoA1   = 0.95 ; % autoregressive parameter of productivity in region 1
rhoA2   = 0.95 ; % autoregressive parameter of productivity in region 2
rhoM    = 0.9  ; % autoregressive parameter of monetary policy
sig     = 2    ; % relative risk aversion coefficient
phi     = 1    ; % relative labor weight in utility
varp    = 1.5  ; % marginal disutility of labor supply
psi     = 8    ; % elasticity of substitution between intermediate goods
ome11   = 0.8  ; % weight of good 1 in consumption composition of region 1
ome21   = 0.7  ; % weight of good 1 in consumption composition of region 2

% -------------------------------------------------- % 
% standard errors values                             %
% -------------------------------------------------- %

sigmaA1 = 0.01 ; % Standard Error of productivity shock 1
sigmaA2 = 0.01 ; % Standard Error of productivity shock 2
sigmaM  = 0.01 ; % Standard Error of monetary shock

% -------------------------------------------------- %
% MODEL                                              %
% -------------------------------------------------- %

model(linear);

% First, the steady state variables as local varibles, for the log-linear use:

#Pss   = 1;
#ZA1ss = 1;
#Rss   = 1/bet - 1;
#RKss  = Pss * (1/bet - (1-del));
#LAMBDAss = Pss * (psi-1)/psi;
#Wss   = (1 - alp) * (LAMBDAss * ZA1ss * (alp/RKss)^alp)^(1/(1 - alp));
#a1ss  = ((Wss^(1 + varp) * ome11^(ome11) * (1 - ome11)^(1 - ome11)) / (phi * Pss * ((1 - alp) * LAMBDAss)^varp))^(1/sig);
#a2ss  = ((Wss^(1 + varp) * ome21^(ome21) * (1 - ome21)^(1 - ome21)) / (phi * Pss * ((1 - alp) * LAMBDAss)^varp))^(1/sig);
#b1ss  = del * alp * LAMBDAss / RKss;
#b2ss  = del * alp * LAMBDAss / RKss;
#Y1ss  = ((a1ss / (1 - b1ss)) * (1 / (ome11^ome11 * (1 - ome11)^(1 - ome11))))^(sig / (sig + varp));
#Y2ss  = ((a2ss / (1 - b2ss)) * (1 / (ome21^ome21 * (1 - ome21)^(1 - ome21))))^(sig / (sig + varp));
#I1ss  = b1ss * Y1ss;
#I2ss  = b2ss * Y2ss;
#C1ss  = a1ss * Y1ss^(-varp / sig);
#C2ss  = a2ss * Y2ss^(-varp / sig);
#E1ss  = Pss * C1ss / (ome11^ome11 * (1 - ome11)^(1 - ome11));
#E2ss  = Pss * C2ss / (ome21^ome21 * (1 - ome21)^(1 - ome21));
#C11ss = E1ss * ome11 / Pss;
#C21ss = E2ss * ome21 / Pss;
#C12ss = E1ss * (1 - ome11) / Pss;
#C22ss = E2ss * (1 - ome21) / Pss;
#K1ss  = alp * Y1ss * LAMBDAss / RKss;
#K2ss  = alp * Y2ss * LAMBDAss / RKss;
#L1ss  = (1 - alp) * Y1ss * LAMBDAss / Wss;
#L2ss  = (1 - alp) * Y2ss * LAMBDAss / Wss;

% -------------------------------------------------- % 
% MODEL EQUATIONS                                    %
% -------------------------------------------------- %

% Second, the log-linear model:

% 01 %
[name='Gross Inflation Rate']
PIt = Pt - Pt(-1) ;

% 02 %
[name='New Keynesian Phillips Curve']
PIt = RHO * PIt(+1) + LAMt*(1-THETA)*(1-THETA*RHO)/THETA ;

% 03 %
[name='Labor Supply']
VARPHI*Lt + SIGMA*Ct = Wt - Pt ;

% 04 %
[name='Household Euler Equation']
Ct(+1) - Ct = (Rt(+1)-Pt(+1))*BETA*Rs/(SIGMA*Ps) ;

% 05 %
[name='Law of Motion for Capital']
Kt = (1-DELTA)*Kt(-1) + DELTA*It ;

% 06 %
[name='Real Marginal Cost']
LAMt = ALPHA*Rt + (1-ALPHA)*Wt - ZAt - Pt ;

% 07 %
[name='Production Function']
Yt = ZAt + ALPHA*Kt(-1) + (1-ALPHA)*Lt ;

% 08 %
[name='Marginal Rates of Substitution of Factors']
Kt(-1) - Lt = Wt - Rt ;

% 09 %
[name='Market Clearing Condition']
Yt = thetaC*Ct + thetaI*It ;

% 10 %
[name='Monetary Policy']
Rt = gammaR*Rt(-1) + (1 - gammaR)*(gammaPI*PIt + gammaY*Yt) + ZMt ;

% 11 %
[name='Productivity Shock']
@#if ZA_POSITIVE == 1
     ZAt = rhoA*ZAt(-1) + eA1 ;
     @#else
     ZAt = rhoA*ZAt(-1) - eA1 ;
     @#endif

% 12 %
[name='Monetary Shock']
@#if ZM_POSITIVE == 1
     ZMt = rhoM*ZMt(-1) + e_M ;
     @#else
     ZMt = rhoM*ZMt(-1) - e_M ;
     @#endif

end;

% -------------------------------------------------- % 
% STEADY STATE                                       %
% -------------------------------------------------- % 

steady_state_model ;

% in the log-linear model, all steady state variables are zero (the variation is zero):

  PIt  = 0 ;
  Pt   = 0 ;
  LAMt = 0 ;
  Ct   = 0 ;
  Lt   = 0 ;
  Rt   = 0 ;
  Kt   = 0 ;
  It   = 0 ;
  Wt   = 0 ;
  ZAt  = 0 ;
  Yt   = 0 ;
  ZMt  = 0 ;

end;

% compute the steady state
steady;
check(qz_zero_threshold=1e-20);

% -------------------------------------------------- % 
% SHOCKS                                             %
% -------------------------------------------------- % 

shocks; 

% Productivity Shock
@#if ZA_SHOCK == 1
     var    eA1;
     stderr sigmaA1;
@#endif

% Monetary Shock
@#if ZM_SHOCK == 1
     var    e_M;
     stderr sigmaM;
@#endif

end;

stoch_simul(irf=100, order=1, qz_zero_threshold=1e-20) ZAt ZMt Yt Pt PIt LAMt Ct Lt Rt Kt It Wt ;

% -------------------------------------------------- % 
% LATEX OUTPUT                                       %
% -------------------------------------------------- % 

write_latex_definitions;
write_latex_parameter_table;
write_latex_original_model;
write_latex_dynamic_model;
write_latex_static_model;
write_latex_steady_state_model;
collect_latex_files;