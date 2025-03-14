% command to run dynare and write
% a new file with all the choices:
% dynare REG_MODEL_v6a savemacro=REG_MODEL_v6a_FINAL.mod

% diagnostic command:
% model_diagnostics(M_, options_, oo_)

% -------------------------------------------------- %
% MODEL OPTIONS                                      %
% -------------------------------------------------- %

% Productivity Shock region 1 ON/OFF:
    @#define ZA1_SHOCK    = 0
% Productivity Shock region 1 sign (+/-): 
    @#define ZA1_POSITIVE = 1

% Productivity Shock region 2 ON/OFF:
    @#define ZA2_SHOCK    = 0
% Productivity Shock region 2 sign (+/-):
    @#define ZA2_POSITIVE = 1

% Monetary Shock ON/OFF:
    @#define ZM_SHOCK    = 1
% Monetary Shock sign (+/-):
    @#define ZM_POSITIVE = 1

% -------------------------------------------------- %
% ENDOGENOUS VARIABLES                               %
% -------------------------------------------------- %

var

C1t  ${\hat{C}_{1}}$   (long_name='Consumption aggregation of region 1')
C2t  ${\hat{C}_{2}}$   (long_name='Consumption aggregation of region 2')
L1t  ${\hat{L}_{1}}$   (long_name='Labor in region 1')
L2t  ${\hat{L}_{2}}$   (long_name='Labor in region 2')
C11t ${\hat{C}_{1 1}}$ (long_name='Comsumption of good 1 in region 1')
C21t ${\hat{C}_{2 1}}$ (long_name='Comsumption of good 1 in region 2')
C12t ${\hat{C}_{1 2}}$ (long_name='Comsumption of good 2 in region 1')
C22t ${\hat{C}_{2 2}}$ (long_name='Comsumption of good 2 in region 2')
Yt   ${\hat{Y}}$       (long_name='Total Production')
Y1t  ${\hat{Y}_{1}}$   (long_name='Production of region 1')
Y2t  ${\hat{Y}_{2}}$   (long_name='Production of region 2')
ZA1t ${\hat{Z}_{A1}}$ (long_name='Production technology level of region 1')
ZA2t ${\hat{Z}_{A2}}$ (long_name='Production technology level of region 2')
ZMt  ${\hat{Z}_M}$     (long_name='Monetary Policy')
Q1t  ${\hat{Q}_{1}}$   (long_name='Consumer price index of region 1')
P1t  ${\hat{P}_{1}}$   (long_name='Price level of region 1')
P2t  ${\hat{P}_{2}}$   (long_name='Price level of region 2')
Rt   ${\hat{R}}$       (long_name='Interest rate')
W1t  ${\hat{W}_{1}}$   (long_name='Region 1 Wage')
W2t  ${\hat{W}_{2}}$   (long_name='Region 2 Wage')
pit  ${\hat{\pi}}$     (long_name='National gross inflation rate')
lambdat ${\hat{\lambda}_{}}$ (long_name='Marginal cost')
;

% -------------------------------------------------- %
% LOCAL VARIABLES                                    %
% -------------------------------------------------- %

% the steady state variables are used as local variables for the linear model.

model_local_variable

% steady state variables used as locals:

P1ss
P2ss
ZA1ss
ZA2ss
ZMss
piss
pi1ss
pi2ss
Rss
Q1ss
Q2ss
LAMBDA1ss
LAMBDA2ss
W1ss
W2ss
a1ss
a2ss
Y1ss
Y2ss
C1ss
C2ss
C11ss
C21ss
C12ss
C22ss
L1ss
L2ss
Yss

% local variables:

thetaP   % P1ss and P2ss proportion
thetaZ   % ZA1ss and ZA2ss proportion
thetapi  % weight of region 1 in total price level
thetaY   % weight of region 1 in total production
;

% -------------------------------------------------- %
% EXOGENOUS VARIABLES                                %
% -------------------------------------------------- %

varexo

e_A1 ${\varepsilon_{A1}}$ (long_name='productivity shock 1')
e_A2 ${\varepsilon_{A2}}$ (long_name='productivity shock 2')
e_M  ${\varepsilon_{M}}$  (long_name='monetary shock')
;

% -------------------------------------------------- %
% PARAMETERS                                         %
% -------------------------------------------------- %

parameters

betta     ${\beta}$         (long_name='intertemporal discount factor')
gammaR    ${\gamma_{R}}$    (long_name='interest-rate smoothing parameter')
gammapi   ${\gamma_{pi}}$   (long_name='interest-rate sensitivity in relation to inflation')
gammaY    ${\gamma_{Y}}$    (long_name='interest-rate sensitivity in relation to product')
thetta    ${\theta}$        (long_name='price stickiness parameter')
rhoA1     ${\rho_{A1}}$     (long_name='autoregressive parameter of productivity in region 1')
rhoA2     ${\rho_{A2}}$     (long_name='autoregressive parameter of productivity in region 2')
rhoM      ${\rho_{M}}$      (long_name='autoregressive parameter of monetary policy')
siggma    ${\sigma}$        (long_name='relative risk aversion coefficient')
phhi      ${\phi}$          (long_name='relative labor weight in utility')
varphhi   ${\varphi}$       (long_name='marginal disutility of labor supply')
pssi      ${\psi}$          (long_name='elasticity of substitution between intermediate goods')
omega11   ${\omega_{11}}$   (long_name='weight of good 1 in consumption composition of region 1')
omega21   ${\omega_{21}}$   (long_name='weight of good 1 in consumption composition of region 2')

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

betta    = 0.985 ;  % intertemporal discount factor
gammaR   = 0.79  ;  % interest-rate smoothing parameter
gammapi  = 2.43  ;  % interest-rate sensitivity in relation to inflation
gammaY   = 0.16  ;  % interest-rate sensitivity in relation to product
thetta   = 0.8   ;  % price stickiness parameter
rhoA1    = 0.95  ;  % autoregressive parameter of productivity in region 1
rhoA2    = 0.95  ;  % autoregressive parameter of productivity in region 2
rhoM     = 0.9   ;  % autoregressive parameter of monetary policy
siggma   = 2     ;  % relative risk aversion coefficient
phhi     = 1     ;  % relative labor weight in utility
varphhi  = 1.5   ;  % marginal disutility of labor supply
pssi     = 8     ;  % elasticity of substitution between intermediate goods
omega11  = 0.9   ;  % weight of good 1 in consumption composition of region 1
omega21  = 0.3   ;  % weight of good 1 in consumption composition of region 2

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

% Steady state variables as local varibles, for log-linear use:

# thetaP = 0.8 ;
# thetaZ = 0.8 ;
# P1ss   = 1 ;
# P2ss   = thetaP * P1ss ;
# ZA1ss  = 1 ;
# ZA2ss  = thetaZ * ZA1ss ;
# ZMss   = 1 ;
# piss   = 1 ;
# pi1ss  = 1 ;
# pi2ss  = 1 ;
# Rss    = 1 / betta - 1 ;
# Q1ss=(P1ss*thetaP^(1-omega11))/(omega11^omega11*(1-omega11)^(1-omega11));
# Q2ss=(P1ss*thetaP^(1-omega11))/(omega21^omega21*(1-omega21)^(1-omega21));
# LAMBDA1ss = P1ss * (pssi-1)/pssi ; 
# LAMBDA2ss = P2ss * (pssi-1)/pssi ;
# W1ss  = LAMBDA1ss * ZA1ss ;
# W2ss  = LAMBDA2ss * ZA2ss ;
# a1ss  = ((W1ss * ZA1ss^varphhi)/(phhi * Q1ss))^(1/siggma) ;
# a2ss  = ((W2ss * ZA2ss^varphhi)/(phhi * Q2ss))^(1/siggma) ;
# Y1ss  = (Q1ss * a1ss / P1ss)^(siggma / (varphhi + siggma)) ;
# Y2ss  = (Q2ss * a2ss / P2ss)^(siggma / (varphhi + siggma)) ;
# C1ss  = a1ss * Y1ss^(-varphhi/siggma) ;
# C2ss  = a2ss * Y2ss^(-varphhi/siggma) ;
# C11ss = C1ss * (P2ss * omega11 / (P1ss * (1 - omega11)))^(1-omega11) ;
# C21ss = C2ss * (P2ss * omega21 / (P1ss * (1 - omega21)))^(1-omega21) ;
# C12ss = C11ss * (1 - omega11) * P1ss / (omega11 * P2ss) ;
# C22ss = C21ss * (1 - omega21) * P1ss / (omega21 * P2ss) ;
# L1ss  = Y1ss / ZA1ss ;
# L2ss  = Y2ss / ZA2ss ;
# Yss   = Y1ss + Y2ss ;

% Parameters derived from steady state variables:

# thetapi = P1ss * Y1ss / (P1ss * Y1ss + P2ss * Y2ss) ;
# thetaY = Y1ss / Yss ;

% -------------------------------------------------- % 
% MODEL EQUATIONS                                    %
% -------------------------------------------------- %

% Second, the log-linear model:

% equations 1,2:
[name='Regional Gross Inflation Rate']
pit = P1t - P1t(-1);
P1t - P1t(-1) = P2t - P2t(-1);

% equations 3:
[name='New Keynesian Phillips Curve']
pit = betta*pit(+1)+lambdat*(1-thetta)*(1-thetta*betta)/thetta;

% equations 4:
[name='Regional Consumption Weight']
C12t - C11t = C22t - C21t;

% equations 5,6:
[name='Regional Consumption of Good 1']
C1t - C11t = (1 - omega11) * (P1t - P2t);
(C1t - C11t) / (1 - omega11) = (C2t - C21t) / (1 - omega21);
% C2t - C21t = (1 - omega21) * (P1t - P2t);

% equation 7:
[name='Region 1 Price Index']
Q1t = omega11 * P1t + (1 - omega11) * P2t;

% equations 8,9:
[name='Labor Supply']
varphhi * L1t + siggma * C1t = W1t - Q1t;
(varphhi*L1t + siggma*C1t) - (varphhi*L2t + siggma*C2t) = W1t - W2t ;
% varphhi * L2t + siggma * C2t = W2t - Q1t;

% equation 10:
[name='Region 1 Euler equation for the bonds return']
Q1t(+1) - Q1t + siggma * (C1t(+1) - C1t) = (1 - betta) * Rt;

% equation 11:
[name='Euler equation for regional consumption']
C1t(+1) - C1t = C2t(+1) - C2t;

% equations 12,13:
[name='Production Function']
Y1t = ZA1t + L1t;
Y2t = ZA2t + L2t;

% equations 14,15:
[name='Marginal Cost']
lambdat = W1t - ZA1t - P1t;
W1t - ZA1t - P1t - (W2t - ZA2t - P2t) = 0;
% lambdat = W2t - ZA2t - P2t;


% equation 16:
[name='Monetary Policy']
Rt = gammaR * Rt(-1) + (1 - gammaR) * (gammapi * pit + gammaY * Yt) + ZMt;

% equation 17:
[name='Market Clearing Condition']
Yt = thetaY * Y1t + (1 - thetaY) * Y2t ;

% equations 18,19:
[name='Regional Market Clearing Condition']
P1t + Y1t = Q1t + C1t;
P2t + Y2t = Q1t + C2t;

% The shocks:

% equations 20,21,22:
[name='Productivity Shock']
@#if ZA1_POSITIVE == 1
     ZA1t = rhoA1 * ZA1t(-1) + e_A1;
     @#else
     ZA1t = rhoA1 * ZA1t(-1) - e_A1;
     @#endif

@#if ZA2_POSITIVE == 1
     ZA2t = rhoA2 * ZA2t(-1) + e_A2;
     @#else
     ZA2t = rhoA2 * ZA2t(-1) - e_A2;
     @#endif

[name='Monetary Shock']
@#if ZM_POSITIVE == 1
     ZMt = rhoM * ZMt(-1) + e_M;
     @#else
     ZMt = rhoM * ZMt(-1) - e_M;
     @#endif

end;

% -------------------------------------------------- % 
% STEADY STATE                                       %
% -------------------------------------------------- % 

steady_state_model ;

% in the log-linear model, all steady state variables are zero 
% (the variation is zero):

C1t      = 0 ;
C2t      = 0 ;
L1t      = 0 ;
L2t      = 0 ;
C11t     = 0 ;
C21t     = 0 ;
C12t     = 0 ;
C22t     = 0 ;
Yt       = 0 ;
Y1t      = 0 ;
Y2t      = 0 ;
ZA1t     = 0 ;
ZA2t     = 0 ;
ZMt      = 0 ;
Q1t      = 0 ;
P1t      = 0 ;
P2t      = 0 ;
Rt       = 0 ;
pit      = 0 ;
W1t      = 0 ;
W2t      = 0 ;
lambdat  = 0 ;

end;

% check the residuals:
resid;

% compute the steady state
steady;
check(qz_zero_threshold=1e-20);

% -------------------------------------------------- % 
% SHOCKS                                             %
% -------------------------------------------------- % 

shocks; 

% Productivity Shock
@#if ZA1_SHOCK == 1
     var    e_A1;
     stderr sigmaA1;
@#endif

@#if ZA2_SHOCK == 1
     var    e_A2;
     stderr sigmaA2;
@#endif

% Monetary Shock
@#if ZM_SHOCK == 1
     var    e_M;
     stderr sigmaM;
@#endif

end;

stoch_simul(irf=100, order=1, qz_zero_threshold=1e-20) ZMt ZA1t Rt W1t C1t L1t Y1t P1t pit ;

% ZMt ZA2t Rt W2t C2t L2t Y2t P2t pit ;

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