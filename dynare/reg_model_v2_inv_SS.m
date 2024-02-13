% parameters:
alpha1  = 0.4   ; % capital weight on production of region 1
alpha2  = 0.3   ; % capital weight on production of region 2
betta   = 0.985 ; % intertemporal discount factor
gammaR  = 0.79  ; % interest-rate smoothing parameter
gammapi = 2.43  ; % interest-rate sensitivity in relation to inflation
gammaY  = 0.16  ; % interest-rate sensitivity in relation to product
dellta  = 0.025 ; % capital depreciation rate
thetta  = 0.8   ; % price stickiness parameter
rhoA1   = 0.95  ; % autoregressive parameter of productivity in region 1
rhoA2   = 0.95  ; % autoregressive parameter of productivity in region 2
rhoM    = 0.9   ; % autoregressive parameter of monetary policy
siggma  = 2     ; % relative risk aversion coefficient
phhi    = 1     ; % relative labor weight in utility
varphhi = 1.5   ; % marginal disutility of labor supply
pssi    = 8     ; % elasticity of substitution between intermediate goods
omega11 = 0.528 ; % weight of good 1 in consumption composition of region 1
omega21 = 0.095 ; % weight of good 1 in consumption composition of region 2

% steady state parameters:
thetaP = 1      ;
thetaZ = 0.7076 ;

% steady state variables as local varibles, for log-linear use:

P1ss  = 1 ;
ZA1ss = 1 ;

P2ss  = thetaP * P1ss  ;
ZA2ss = thetaZ * ZA1ss ;

ZMss  = 1 ;
piss  = 1 ;
pi1ss = 1 ;
pi2ss = 1 ;

Rss  = P1ss * (1/betta - (1 - dellta));

Q1ss = P1ss / (omega11^omega11*(1-omega11)^(1-omega11));
Q2ss = P1ss / (omega21^omega21*(1-omega21)^(1-omega21));

LAMBDA1ss = P1ss * (pssi-1)/pssi ; 
LAMBDA2ss = P2ss * (pssi-1)/pssi ;

W1ss  = (1-alpha1) * (LAMBDA1ss*ZA1ss*(alpha1/Rss)^alpha1)^(1/(1-alpha1)) ;
W2ss  = (1-alpha2) * (LAMBDA2ss*ZA2ss*(alpha2/Rss)^alpha2)^(1/(1-alpha2)) ;

a1ss = (W1ss/(phhi*ZA1ss)*(ZA1ss*(alpha1*W1ss/((1-alpha1)*Rss))^alpha1)^varphhi)^(1/siggma) ;
a2ss = (W2ss/(phhi*ZA2ss)*(ZA2ss*(alpha2*W2ss/((1-alpha2)*Rss))^alpha2)^varphhi)^(1/siggma) ;

b1ss = (dellta/ZA1ss) * (alpha1*W1ss/((1-alpha1)*Rss))^(1-alpha1) ;
b2ss = (dellta/ZA2ss) * (alpha2*W2ss/((1-alpha2)*Rss))^(1-alpha2) ;

% Y1ss  = 0.318    ;
% Y2ss  = 1 - Y1ss ;
% Yss   = 1        ;

Y1ss  = (a1ss/(1-b1ss))^(siggma/(siggma+varphhi)) ;
Y2ss  = (a2ss/(1-b2ss))^(siggma/(siggma+varphhi)) ;
Yss   = Y1ss + Y2ss  ;

C1ss  = a1ss * Y1ss^(-varphhi/siggma) ;
C2ss  = a2ss * Y2ss^(-varphhi/siggma) ;

I1ss = b1ss * Y1ss ;
I2ss = b2ss * Y2ss ;

K1ss = I1ss / dellta ;
K2ss = I2ss / dellta ;

C11ss = C1ss * (P2ss * omega11 / (P1ss * (1 - omega11)))^(1-omega11) ;
C21ss = C2ss * (P2ss * omega21 / (P1ss * (1 - omega21)))^(1-omega21) ;

C12ss = C11ss * (1 - omega11) * P1ss / (omega11 * P2ss) ;
C22ss = C21ss * (1 - omega21) * P1ss / (omega21 * P2ss) ;

L1ss  = (Y1ss / ZA1ss) * ((1-alpha1)*Rss/(alpha1*W1ss))^alpha1 ;
L2ss  = (Y2ss / ZA2ss) * ((1-alpha2)*Rss/(alpha2*W2ss))^alpha2 ;

% parameters derived from steady state variables:

thetapi = P1ss * Y1ss / (P1ss * Y1ss + P2ss * Y2ss) ;
thetaY  = Y1ss / Yss ;
r = Rss / P1ss ;
thetaC1 = C1ss / Y1ss ;
thetaC2 = C2ss / Y2ss ;

% Create a cell array to store variable names and their corresponding values
variables = {
    'alpha1', alpha1;
    'alpha2', alpha2;
    'betta', betta;
    'gammaR', gammaR;
    'gammapi', gammapi;
    'gammaY', gammaY;
    'dellta', dellta;
    'thetta', thetta;
    'rhoA1', rhoA1;
    'rhoA2', rhoA2;
    'rhoM', rhoM;
    'siggma', siggma;
    'phhi', phhi;
    'varphhi', varphhi;
    'pssi', pssi;
    'omega11', omega11;
    'omega21', omega21;
    'thetaP', thetaP;
    'thetaZ', thetaZ;
    'P1ss', P1ss;
    'ZA1ss', ZA1ss;
    'P2ss', P2ss;
    'ZA2ss', ZA2ss;
    'ZMss', ZMss;
    'piss', piss;
    'pi1ss', pi1ss;
    'pi2ss', pi2ss;
    'Rss', Rss;
    'Q1ss', Q1ss;
    'Q2ss', Q2ss;
    'LAMBDA1ss', LAMBDA1ss;
    'LAMBDA2ss', LAMBDA2ss;
    'W1ss', W1ss;
    'W2ss', W2ss;
    'a1ss', a1ss;
    'a2ss', a2ss;
    'b1ss', b1ss;
    'b2ss', b2ss;
    'Y1ss', Y1ss;
    'Y2ss', Y2ss;
    'Yss', Yss;
    'C1ss', C1ss;
    'C2ss', C2ss;
    'I1ss', I1ss;
    'I2ss', I2ss;
    'K1ss', K1ss;
    'K2ss', K2ss;
    'C11ss', C11ss;
    'C21ss', C21ss;
    'C12ss', C12ss;
    'C22ss', C22ss;
    'L1ss', L1ss;
    'L2ss', L2ss;
    'thetapi', thetapi;
    'thetaY', thetaY;
    'r', r;
    'thetaC1', thetaC1;
    'thetaC2', thetaC2;
};

% Specify the Excel file name
excelFileName = 'reg_model_v2_inv_SS.xlsx';

% Write the cell array to the Excel file
% xlswrite(excelFileName, variables);
% writematrix(excelFileName, variables);
writecell(variables,excelFileName);