
SIGMA   = 2     ; % Relative Risk Aversion
PHI     = 1     ; % Labor Disutility Weight
VARPHI  = 1.5   ; % Marginal Disutility of Labor Supply
BETA    = 0.985 ; % Intertemporal Discount Factor
DELTA   = 0.025 ; % Depreciation Rate
ALPHA   = 0.35  ; % Output Elasticity of Capital
PSI     = 8     ; % Elasticity of Substitution between Intermediate Goods
THETA   = 0.8   ; % Price Stickness Parameter
gammaR  = 0.79  ; % Interest-Rate Smoothing Parameter
gammaPI = 2.43  ; % Interest-Rate Sensitivity to Inflation
gammaY  = 0.16  ; % Interest-Rate Sensitivity to Product
% maybe it's a local var, right? RHO     = 1/(1+Rs); % Steady State Discount Rate
rhoA    = 0.95  ; % Autoregressive Parameter of Productivity Shock
rhoM    = 0.9   ; % Autoregressive Parameter of Monetary Policy Shock
thetaC  = 0.8   ; % Consumption weight in Output
thetaI  = 0.2   ; % Investment weight in Output

Ps   = 1 ;
PIs  = 1 ;
ZAs  = 1 ;
ZMs  = 1 ;

Rs   = Ps*(1/BETA-(1-DELTA)) 

LAMs = Ps*(PSI-1)/PSI 

Ws   = (1-ALPHA)*(LAMs*ZAs*(ALPHA/Rs)^ALPHA)^(1/(1-ALPHA)) 

Ys   = ((Ws/(PHI*Ps))*((Ws/((1-ALPHA)*LAMs))^PSI)*(Rs/(Rs-DELTA*ALPHA*LAMs))^SIGMA)^(1/(PSI+SIGMA)) 

Cs   = ((Ws/(PHI*Ps))*((1-ALPHA)*Ys*LAMs/Ws)^(-PSI))^(1/SIGMA) 

Ks   = ALPHA*Ys*LAMs/Rs 

Ls   = (1-ALPHA)*Ys*LAMs/Ws 

Is   = DELTA*Ks 

RHO  = 1/(1+Rs) 


