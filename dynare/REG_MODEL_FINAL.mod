% command to run dynare and write
% a new file with all the choices:
% dynare REG_MODEL savemacro=REG_MODEL_FINAL.mod
% -------------------------------------------------- %
% MODEL OPTIONS                                      %
% -------------------------------------------------- %
% Productivity Shock region 1 ON/OFF:
% Productivity Shock region 1 sign (+/-): 
% Productivity Shock region 2 ON/OFF:
% Productivity Shock region 2 sign (+/-):
% Monetary Shock ON/OFF:
% Monetary Shock sign (+/-):
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
ZA1t     ${\hat{Z}_{A1}}$   (long_name='Production technology level of region 1')
ZA2t     ${\hat{Z}_{A2}}$   (long_name='Production technology level of region 2')
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
    Pss
    ZA1ss
    Rss
    RKss
    LAMBDAss
    Wss
    a1ss
    a2ss
    b1ss
    b2ss
    Y1ss
    Y2ss
    I1ss
    I2ss
    C1ss
    C2ss
    E1ss
    E2ss
    C11ss
    C21ss
    C12ss
    C22ss
    K1ss
    K2ss
    L1ss
    L2ss 
    ;
% -------------------------------------------------- %
% EXOGENOUS VARIABLES                                %
% -------------------------------------------------- %
varexo
  e_A1 ${\varepsilon_{A1}}$   (long_name='productivity shock 1')
  e_A2 ${\varepsilon_{A2}}$   (long_name='productivity shock 2')
  e_M  ${\varepsilon_{M}}$    (long_name='monetary shock')
  ;
% -------------------------------------------------- %
% PARAMETERS                                         %
% -------------------------------------------------- %
parameters
alppha    ${\alpha}$        (long_name='capital elasticity of production')
betta     ${\beta}$         (long_name='intertemporal discount factor')
gammaR    ${\gamma_{R}}$    (long_name='interest-rate smoothing parameter')
gammapi   ${\gamma_{pi}}$   (long_name='interest-rate sensitivity in relation to inflation')
gammaY    ${\gamma_{Y}}$    (long_name='interest-rate sensitivity in relation to product')
dellta    ${\delta}$        (long_name='capital depreciation rate')
thetta    ${\theta}$        (long_name='price stickiness parameter')
thetaC11  ${\theta_{C11}}$  (long_name='weight of good 1 in demand of region 1')
thetaC12  ${\theta_{C12}}$  (long_name='weight of good 2 in demand of region 1')
thetaC21  ${\theta_{C21}}$  (long_name='weight of good 1 in demand of region 2')
thetaC22  ${\theta_{C22}}$  (long_name='weight of good 2 in demand of region 2')
thetaPY1  ${\theta_{PY1}}$  (long_name='weight of region 1 in gross domestic product')
thetaY1   ${\theta_{Y1}}$   (long_name='weight of region 1 in total production')
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
alppha   = 0.35  ;  % capital elasticity of production
betta    = 0.985 ;  % intertemporal discount factor
gammaR   = 0.79  ;  % interest-rate smoothing parameter
gammapi  = 2.43  ;  % interest-rate sensitivity in relation to inflation
gammaY   = 0.16  ;  % interest-rate sensitivity in relation to product
dellta   = 0.025 ;  % capital depreciation rate
thetta   = 0.8   ;  % price stickiness parameter
thetaC11 = 0.85  ;  % weight of good 1 in demand of region 1
thetaC12 = 0.05  ;  % weight of good 2 in demand of region 1
thetaC21 = 0.25  ;  % weight of good 1 in demand of region 2
thetaC22 = 0.7   ;  % weight of good 2 in demand of region 2
thetaPY1 = 0.6   ;  % weight of region 1 in gross domestic product
thetaY1  = 0.6   ;  % weight of region 1 in total production
rhoA1    = 0.95  ;  % autoregressive parameter of productivity in region 1
rhoA2    = 0.95  ;  % autoregressive parameter of productivity in region 2
rhoM     = 0.9   ;  % autoregressive parameter of monetary policy
siggma   = 2     ;  % relative risk aversion coefficient
phhi     = 1     ;  % relative labor weight in utility
varphhi  = 1.5   ;  % marginal disutility of labor supply
pssi     = 8     ;  % elasticity of substitution between intermediate goods
omega11  = 0.8   ;  % weight of good 1 in consumption composition of region 1
omega21  = 0.7   ;  % weight of good 1 in consumption composition of region 2
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
#Rss   = 1/betta - 1;
#RKss  = Pss * (1/betta - (1-dellta));
#LAMBDAss = Pss * (pssi-1)/pssi;
#Wss   = (1 - alppha) * (LAMBDAss * ZA1ss * (alppha/RKss)^alppha)^(1/(1 - alppha));
#a1ss  = ((Wss^(1 + varphhi) * omega11^(omega11) * (1 - omega11)^(1 - omega11)) / (phhi * Pss * ((1 - alppha) * LAMBDAss)^varphhi))^(1/siggma);
#a2ss  = ((Wss^(1 + varphhi) * omega21^(omega21) * (1 - omega21)^(1 - omega21)) / (phhi * Pss * ((1 - alppha) * LAMBDAss)^varphhi))^(1/siggma);
#b1ss  = dellta * alppha * LAMBDAss / RKss;
#b2ss  = dellta * alppha * LAMBDAss / RKss;
#Y1ss  = ((a1ss / (1 - b1ss)) * (1 / (omega11^omega11 * (1 - omega11)^(1 - omega11))))^(siggma / (siggma + varphhi));
#Y2ss  = ((a2ss / (1 - b2ss)) * (1 / (omega21^omega21 * (1 - omega21)^(1 - omega21))))^(siggma / (siggma + varphhi));
#I1ss  = b1ss * Y1ss;
#I2ss  = b2ss * Y2ss;
#C1ss  = a1ss * Y1ss^(-varphhi / siggma);
#C2ss  = a2ss * Y2ss^(-varphhi / siggma);
#E1ss  = Pss * C1ss / (omega11^omega11 * (1 - omega11)^(1 - omega11));
#E2ss  = Pss * C2ss / (omega21^omega21 * (1 - omega21)^(1 - omega21));
#C11ss = E1ss * omega11 / Pss;
#C21ss = E2ss * omega21 / Pss;
#C12ss = E1ss * (1 - omega11) / Pss;
#C22ss = E2ss * (1 - omega21) / Pss;
#K1ss  = alppha * Y1ss * LAMBDAss / RKss;
#K2ss  = alppha * Y2ss * LAMBDAss / RKss;
#L1ss  = (1 - alppha) * Y1ss * LAMBDAss / Wss;
#L2ss  = (1 - alppha) * Y2ss * LAMBDAss / Wss;
% -------------------------------------------------- % 
% MODEL EQUATIONS                                    %
% -------------------------------------------------- %
% Second, the log-linear model:
[name='Regional Gross Inflation Rate']
pi1t = P1t - P1t(-1);
pi2t = P2t - P2t(-1);
[name='New Keynesian Phillips Curve']
pi1t = betta * pi1t(+1) + lambda1t * (1 - thetta) * (1 - thetta * betta) / thetta;
pi2t = betta * pi2t(+1) + lambda2t * (1 - thetta) * (1 - thetta * betta) / thetta;
[name='Law of Motion for Capital']
K1t = (1 - dellta) * K1t(-1) + dellta * I1t;
K2t = (1 - dellta) * K2t(-1) + dellta * I2t;
[name='Regional Levels of Consumption and Prices']
C11t - C12t = P2t - P1t;
C21t - C22t = P2t - P1t;
[name='Total Expenses']
E1t = C1t + omega11 * P1t + (1 - omega11) * P2t;
E2t = C2t + omega21 * P1t + (1 - omega21) * P2t;
[name='Labor Supply']
varphhi * L1t - (1 - siggma) * C1t = Wt - E1t;
varphhi * L2t - (1 - siggma) * C2t = Wt - E2t;
[name='Euler equation for the bonds return']
(E1t(+1) - (1 - siggma) * C1t(+1)) - (E1t - (1 - siggma) * C1t) = (1 - betta) * Rt;
(E2t(+1) - (1 - siggma) * C2t(+1)) - (E2t - (1 - siggma) * C2t) = (1 - betta) * Rt;
[name='Euler equation for the capital return']
(E1t(+1) - P1t(+1) - (1 - siggma) * C1t(+1)) - (E1t - P1t - (1 - siggma) * C1t) = betta * (RKss/Pss) * (RKt(+1) - P1t(+1));
(E2t(+1) - P2t(+1) - (1 - siggma) * C2t(+1)) - (E2t - P2t - (1 - siggma) * C2t) = betta * (RKss/Pss) * (RKt(+1) - P2t(+1));
[name='Production Function']
Y1t = ZA1t + alppha * K1t(-1) + (1 - alppha) * L1t;
Y2t = ZA2t + alppha * K2t(-1) + (1 - alppha) * L2t;
[name='Marginal Rates of Substitution of Factors']
K1t(-1) - L1t = Wt - RKt;
K2t(-1) - L2t = Wt - RKt;
[name='Marginal Cost']
lambda1t = alppha * RKt + (1 - alppha) * Wt - ZA1t - P1t;
lambda2t = alppha * RKt + (1 - alppha) * Wt - ZA2t - P2t;
[name='Monetary Policy']
Rt = gammaR * Rt(-1) + (1 - gammaR) * (gammapi * pit + gammaY * Yt) + ZMt;
[name='National Gross Inflation Rate']
pit = Pt - Pt(-1);
[name='National Price Level']
Pt + Yt = thetaPY1 * (P1t + Y1t) + (1 - thetaPY1) * (P2t + Y2t);
[name='Market Clearing Condition']
Yt = thetaY1 * Y1t + (1 - thetaY1) * Y2t;
[name='Regional Market Clearing Condition']
Y1t = thetaC11 * C11t + thetaC12 * C12t + (1 - thetaC11 - thetaC12) * I1t;
Y2t = thetaC21 * C21t + thetaC22 * C22t + (1 - thetaC21 - thetaC22) * I2t;
% The shocks:
[name='Productivity Shock']
     ZA1t = rhoA1 * ZA1t(-1) + e_A1;
     ZA2t = rhoA2 * ZA2t(-1) + e_A2;
[name='Monetary Shock']
     ZMt = rhoM * ZMt(-1) + e_M;
end;
% -------------------------------------------------- % 
% STEADY STATE                                       %
% -------------------------------------------------- % 
steady_state_model ;
% in the log-linear model, all steady state variables are zero (the variation is zero):
C1t      = 0 ;
C2t      = 0 ;
C11t     = 0 ;
C21t     = 0 ;
C12t     = 0 ;
C22t     = 0 ;
L1t      = 0 ;
L2t      = 0 ;
K1t      = 0 ;
K2t      = 0 ;
Yt       = 0 ;
Y1t      = 0 ;
Y2t      = 0 ;
I1t      = 0 ;
I2t      = 0 ;
ZA1t     = 0 ;
ZA2t     = 0 ;
E1t      = 0 ;
E2t      = 0 ;
Pt       = 0 ;
P1t      = 0 ;
P2t      = 0 ;
Rt       = 0 ;
RKt      = 0 ;
Wt       = 0 ;
pit      = 0 ;
pi1t     = 0 ;
pi2t     = 0 ;
lambda1t = 0 ;
lambda2t = 0 ;
ZMt      = 0 ;
end;
% compute the steady state
steady;
check(qz_zero_threshold=1e-20);
% -------------------------------------------------- % 
% SHOCKS                                             %
% -------------------------------------------------- % 
shocks; 
% Productivity Shock
% Monetary Shock
     var    e_M;
     stderr sigmaM;
end;
stoch_simul(irf=100, order=1, qz_zero_threshold=1e-20) ZMt ZA1t Rt RKt Wt C1t L1t K1t Y1t I1t P1t pi1t ;
% ZMt ZA1t ZA2t Rt RKt Wt C1t L1t K1t Y1t I1t P1t pi1t C2t L2t K2t Y2t I2t P2t pi2t
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
