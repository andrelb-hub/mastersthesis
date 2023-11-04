
% command to run dynare and write
% a new file with all the choices:
% dynare m001_canonical_NK savemacro=m001_canonical_NK_FINAL.mod

% -------------------------------------------------- %
% MODEL OPTIONS                                      %
% -------------------------------------------------- %

% Productivity Shock ON/OFF
@#define ZA_SHOCK    = 1

% Productivity Shock sign: +/-
@#define ZA_POSITIVE = 1

% Monetary Shock ON/OFF
@#define ZM_SHOCK    = 0

% Monetary Shock sign: +/-
@#define ZM_POSITIVE = 1

% -------------------------------------------------- %
% ENDOGENOUS VARIABLES                               %
% -------------------------------------------------- %

var

pit   ${\hat{\pi}}$     (long_name='Inflation Rate')
Pt    ${\hat{P}}$       (long_name='Price Level')
lambt ${\hat{\lambda}}$ (long_name='Real Marginal Cost')
Lt    ${\hat{L}}$       (long_name='Labor')
Rt    ${\hat{R}}$       (long_name='Interest Rate')
Wt    ${\hat{W}}$       (long_name='Wage')
Yt    ${\hat{Y}}$       (long_name='Production')
ZAt   ${\hat{Z}^A}$     (long_name='Productivity')
ZMt   ${\hat{Z}^M}$     (long_name='Monetary Policy')
;

% -------------------------------------------------- %
% LOCAL VARIABLES                                    %
% -------------------------------------------------- %

% the steady state variables are used as local 
% variables for the linear model.

model_local_variable

% steady state variables used as locals:
    
piss
Pss
LAMBss
Lss
Rss
Wss
Yss
ZAss
ZMss
;

% -------------------------------------------------- %
% EXOGENOUS VARIABLES                                %
% -------------------------------------------------- %

varexo

epsilonA ${\varepsilon_A}$   (long_name='productivity shock')
epsilonM ${\varepsilon_M}$   (long_name='monetary shock')
;

% -------------------------------------------------- %
% PARAMETERS                                         %
% -------------------------------------------------- %

parameters

siggma  ${\sigma}$     (long_name='Relative Risk Aversion')
varphhi ${\varphi}$    (long_name='Marginal Disutility of Labor Supply')
phhi    ${\phi}$       (long_name='Labor Disutility Weight')
betta   ${\beta}$      (long_name='Intertemporal Discount Factor')
pssi    ${\psi}$       (long_name='Elasticity of Substitution between Intermediate Goods')
thetta  ${\theta}$     (long_name='Price Stickness Parameter')
gammaR  ${\gamma_R}$   (long_name='Interest-Rate Smoothing Parameter')
gammaPI ${\gamma_\pi}$ (long_name='Interest-Rate Sensitivity to Inflation')
gammaY  ${\gamma_Y}$   (long_name='Interest-Rate Sensitivity to Product')
rhoA    ${\rho_A}$     (long_name='Autoregressive Parameter of Productivity Shock')
rhoM    ${\rho_M}$     (long_name='Autoregressive Parameter of Monetary Policy Shock')

% -------------------------------------------------- % 
% standard errors of stochastic shocks               %
% -------------------------------------------------- %

sigmaA ${\sigma_A}$   (long_name='Productivity-Shock Standard Error')
sigmaM ${\sigma_M}$   (long_name='Monetary-Shock Standard Error')
;

% -------------------------------------------------- %
% parameters values                                  %
% -------------------------------------------------- % 

siggma  = 2     ; % Relative Risk Aversion
varphhi = 1.5   ; % Marginal Disutility of Labor Supply
phhi    = 1     ; % Labor Disutility Weight
betta   = 0.985 ; % Intertemporal Discount Factor
pssi    = 8     ; % Elasticity of Substitution between Intermediate Goods
thetta  = 0.8   ; % Price Stickness Parameter
gammaR  = 0.79  ; % Interest-Rate Smoothing Parameter
gammaPI = 2.43  ; % Interest-Rate Sensitivity to Inflation
gammaY  = 0.16  ; % Interest-Rate Sensitivity to Product
rhoA    = 0.95  ; % Autoregressive Parameter of Productivity Shock
rhoM    = 0.9   ; % Autoregressive Parameter of Monetary Policy Shock
 
% -------------------------------------------------- % 
% standard errors values                             %
% -------------------------------------------------- %

sigmaA = 0.01  ; % Productivity-Shock Standard Error
sigmaM = 0.01  ; % Monetary-Shock Standard Error

% -------------------------------------------------- %
% MODEL                                              %
% -------------------------------------------------- %

model(linear);

% First, the steady state variables as local varibles, 
% for the log-linear use:

#piss   = 1 ;
#Pss    = 1 ;
#ZAss   = 1 ;
#ZMss   = 1 ;
#Rss    = (1 / betta) - 1 ;
#LAMBss = Pss * (pssi - 1) / pssi ;
#Wss    = LAMBss * ZAss ;
#Yss    = (Wss / (varphhi * Pss))^(1/(phhi + siggma)) ;
#Lss    = Yss ;
#Css    = Yss ; 

% -------------------------------------------------- % 
% MODEL EQUATIONS                                    %
% -------------------------------------------------- %

% Second, the log-linear model:

% 01 %
[name='Gross Inflation Rate']
pit = Pt - Pt(-1) ;

% 02 %
[name='New Keynesian Phillips Curve']
pit = betta * pit(+1) + lambt*(1-thetta)*(1-thetta*betta)/thetta ;

% 03 %
[name='Labor Supply']
varphhi * Lt + siggma * Yt = Wt - Pt ;

% 04 %
[name='Household Euler Equation']
Yt = Yt(+1) - (betta / siggma) * (Rt - pit(+1)) ;

% 05 %
[name='Real Marginal Cost']
lambt = Wt - ZAt - Pt ;

% 06 %
[name='Production Function']
Yt = ZAt + Lt ;

% 07 %
[name='Monetary Policy']
Rt = gammaR*Rt(-1) + (1 - gammaR)*(gammaPI*pit + gammaY*Yt) + ZMt ;

% 08 %
[name='Productivity Shock']
@#if ZA_POSITIVE == 1
     ZAt = rhoA*ZAt(-1) + epsilonA ;
     @#else
     ZAt = rhoA*ZAt(-1) - epsilonA ;
     @#endif

% 09 %
[name='Monetary Shock']
@#if ZM_POSITIVE == 1
     ZMt = rhoM*ZMt(-1) + epsilonM ;
     @#else
     ZMt = rhoM*ZMt(-1) - epsilonM ;
     @#endif

end;

% -------------------------------------------------- % 
% STEADY STATE                                       %
% -------------------------------------------------- % 

steady_state_model ;

% in the log-linear model, all steady state variables 
% are zero (the variation is zero):

pit   = 0 ;
Pt    = 0 ;
lambt = 0 ;
Lt    = 0 ;
Rt    = 0 ;
Wt    = 0 ;
Yt    = 0 ;
ZAt   = 0 ;
ZMt   = 0 ;

end;

% compute the steady state:

steady;
check(qz_zero_threshold=1e-20);

% -------------------------------------------------- % 
% SHOCKS                                             %
% -------------------------------------------------- % 

shocks; 

% Productivity Shock
@#if ZA_SHOCK == 1
     var    epsilonA;
     stderr sigmaA;
@#endif

% Monetary Shock
@#if ZM_SHOCK == 1
     var    epsilonM;
     stderr sigmaM;
@#endif

end;

stoch_simul(irf=100, order=1, qz_zero_threshold=1e-20) ZAt ZMt Yt Pt pit lambt Lt Rt Wt ;

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