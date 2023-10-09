% parameters:

alp     = 0.35 ; % capital elasticity of production
bet     = 0.985; % intertemporal discount factor
gamR    = 0.79 ; % interest-rate smoothing parameter
gampi   = 2.43 ; % interest-rate sensitivity in relation to inflation
gamY    = 0.16 ; % interest-rate sensitivity in relation to product
del     = 0.025; % capital depreciation rate
the     = 0.8  ; % price stickiness parameter
theY1   = 0.6  ; % weight of region 1 production in total production
theC11  = 0.85 ; % weight of good 1 in demand of region 1
theC12  = 0.05 ; % weight of good 2 in demand of region 1
theC21  = 0.25 ; % weight of good 1 in demand of region 2
theC22  = 0.7  ; % weight of good 2 in demand of region 2
theP1   = 0.6  ; % weight of price level 1 in national price level
rhoA1   = 0.95 ; % autoregressive parameter of productivity in region 1
rhoA2   = 0.95 ; % autoregressive parameter of productivity in region 2
rhoM    = 0.9  ; % autoregressive parameter of monetary policy
sig     = 2    ; % relative risk aversion coefficient
phi     = 1    ; % relative labor weight in utility
varp    = 1.5  ; % marginal disutility of labor supply
psi     = 8    ; % elasticity of substitution between intermediate goods
ome11   = 0.8  ; % weight of good 1 in consumption composition of region 1
ome21   = 0.7  ; % weight of good 1 in consumption composition of region 2

% steady state variables:

Pss   = 1;
ZA1ss = 1;
Rss   = 1/bet - 1;
RKss  = Pss * (1/bet - (1-del));
LAMBDAss = Pss * (psi-1)/psi;
Wss   = (1 - alp) * (LAMBDAss * ZA1ss * (alp/RKss)^alp)^(1/(1 - alp));
a1ss  = ((Wss^(1 + varp) * ome11^(ome11) * (1 - ome11)^(1 - ome11)) / (phi * Pss * ((1 - alp) * LAMBDAss)^varp))^(1/sig);
a2ss  = ((Wss^(1 + varp) * ome21^(ome21) * (1 - ome21)^(1 - ome21)) / (phi * Pss * ((1 - alp) * LAMBDAss)^varp))^(1/sig);
b1ss  = del * alp * LAMBDAss / RKss;
b2ss  = del * alp * LAMBDAss / RKss;
Y1ss  = ((a1ss / (1 - b1ss)) * (1 / (ome11^ome11 * (1 - ome11)^(1 - ome11))))^(sig / (sig + varp));
Y2ss  = ((a2ss / (1 - b2ss)) * (1 / (ome21^ome21 * (1 - ome21)^(1 - ome21))))^(sig / (sig + varp));
I1ss  = b1ss * Y1ss;
I2ss  = b2ss * Y2ss;
C1ss  = a1ss * Y1ss^(-varp / sig);
C2ss  = a2ss * Y2ss^(-varp / sig);
E1ss  = Pss * C1ss / (ome11^ome11 * (1 - ome11)^(1 - ome11));
E2ss  = Pss * C2ss / (ome21^ome21 * (1 - ome21)^(1 - ome21));
C11ss = E1ss * ome11 / Pss;
C21ss = E2ss * ome21 / Pss;
C12ss = E1ss * (1 - ome11) / Pss;
C22ss = E2ss * (1 - ome21) / Pss;
K1ss  = alp * Y1ss * LAMBDAss / RKss;
K2ss  = alp * Y2ss * LAMBDAss / RKss;
L1ss  = (1 - alp) * Y1ss * LAMBDAss / Wss;
L2ss  = (1 - alp) * Y2ss * LAMBDAss / Wss;

% Create a cell array to store variable names and their corresponding values
variables = {
    'alp', alp;
    'bet', bet;
    'gamR', gamR;
    'gampi', gampi;
    'gamY', gamY;
    'del', del;
    'the', the;
    'theY1', theY1;
    'theC11', theC11;
    'theC12', theC12;
    'theC21', theC21;
    'theC22', theC22;
    'theP1', theP1;
    'rhoA1', rhoA1;
    'rhoA2', rhoA2;
    'rhoM', rhoM;
    'sig', sig;
    'phi', phi;
    'varp', varp;
    'psi', psi;
    'ome11', ome11;
    'ome21', ome21;
    'Pss', Pss;
    'ZA1ss', ZA1ss;
    'ZA2ss', ZA2ss;
    'Rss', Rss;
    'RKss', RKss;
    'LAMBDAss', LAMBDAss;
    'Wss', Wss;
    'a1ss', a1ss;
    'a2ss', a2ss;
    'b1ss', b1ss;
    'b2ss', b2ss;
    'Y1ss', Y1ss;
    'Y2ss', Y2ss;
    'I1ss', I1ss;
    'I2ss', I2ss;
    'C1ss', C1ss;
    'C2ss', C2ss;
    'E1ss', E1ss;
    'E2ss', E2ss;
    'C11ss', C11ss;
    'C21ss', C21ss;
    'C12ss', C12ss;
    'C22ss', C22ss;
    'K1ss', K1ss;
    'K2ss', K2ss;
    'L1ss', L1ss;
    'L2ss', L2ss
};

% Specify the Excel file name
excelFileName = 'values.xlsx';

% Write the cell array to the Excel file
xlswrite(excelFileName, variables);