% parameters:
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

% steady state variables:
Pss   = 1;
ZA1ss = 1;
Rss   = 1/betta - 1;
RKss  = Pss * (1/betta - (1-dellta));
LAMBDAss = Pss * (pssi-1)/pssi;
Wss   = (1 - alppha) * (LAMBDAss * ZA1ss * (alppha/RKss)^alppha)^(1/(1 - alppha));
a1ss  = ((Wss^(1 + varphhi) * omega11^(omega11) * (1 - omega11)^(1 - omega11)) / (phhi * Pss * ((1 - alppha) * LAMBDAss)^varphhi))^(1/siggma);
a2ss  = ((Wss^(1 + varphhi) * omega21^(omega21) * (1 - omega21)^(1 - omega21)) / (phhi * Pss * ((1 - alppha) * LAMBDAss)^varphhi))^(1/siggma);
b1ss  = dellta * alppha * LAMBDAss / RKss;
b2ss  = dellta * alppha * LAMBDAss / RKss;
Y1ss  = ((a1ss / (1 - b1ss)) * (1 / (omega11^omega11 * (1 - omega11)^(1 - omega11))))^(siggma / (siggma + varphhi));
Y2ss  = ((a2ss / (1 - b2ss)) * (1 / (omega21^omega21 * (1 - omega21)^(1 - omega21))))^(siggma / (siggma + varphhi));
I1ss  = b1ss * Y1ss;
I2ss  = b2ss * Y2ss;
C1ss  = a1ss * Y1ss^(-varphhi / siggma);
C2ss  = a2ss * Y2ss^(-varphhi / siggma);
E1ss  = Pss * C1ss / (omega11^omega11 * (1 - omega11)^(1 - omega11));
E2ss  = Pss * C2ss / (omega21^omega21 * (1 - omega21)^(1 - omega21));
C11ss = E1ss * omega11 / Pss;
C21ss = E2ss * omega21 / Pss;
C12ss = E1ss * (1 - omega11) / Pss;
C22ss = E2ss * (1 - omega21) / Pss;
K1ss  = alppha * Y1ss * LAMBDAss / RKss;
K2ss  = alppha * Y2ss * LAMBDAss / RKss;
L1ss  = (1 - alppha) * Y1ss * LAMBDAss / Wss;
L2ss  = (1 - alppha) * Y2ss * LAMBDAss / Wss;

% Create a cell array to store variable names and their corresponding values
variables = {
    'alppha', alppha;
    'betta', betta;
    'gammaR', gammaR;
    'gammapi', gammapi;
    'gammaY', gammaY;
    'dellta', dellta;
    'thetta', thetta;
    'thetaY1', thetaY1;
    'thetaC11', thetaC11;
    'thetaC12', thetaC12;
    'thetaC21', thetaC21;
    'thetaC22', thetaC22;
    'thetaPY1', thetaPY1;
    'rhoA1', rhoA1;
    'rhoA2', rhoA2;
    'rhoM', rhoM;
    'siggma', siggma;
    'phhi', phhi;
    'varphhi', varphhi;
    'pssi', pssi;
    'omega11', omega11;
    'omega21', omega21;
    'Pss', Pss;
    'ZA1ss', ZA1ss;
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
    'L2ss', L2ss};


% Specify the Excel file name
excelFileName = 'values.xlsx';

% Write the cell array to the Excel file
xlswrite(excelFileName, variables);