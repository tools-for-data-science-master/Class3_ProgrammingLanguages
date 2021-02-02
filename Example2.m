[~, ~, raw] = xlsread('/Users/dingmin/Desktop/CBAPaper/CbaCodesV5_GitHubRepository/CraterParameterStatistics7.xlsx','Main');
raw = raw(3:326,[5,7]);
data = reshape([raw{:}],size(raw));
Dc = data(:,1);
CBA = data(:,2);
clearvars data raw;

%% fit a two-slope model
% use fminsearch
%optimset('MaxFunEvals',100000,'MaxIter',50000,'TolFun',0.01)
[params,S2_twoslope] = fminsearch(@(params) twoslope_sse(params,Dc,CBA,0),[-0.6 0]);
%[params,S2_twoslope] = fmincon(@(params) twoslope_sse(params,Dc,cba,Bgiven),[200 a1],[],[],[],[],[Dcminrange(1) 0],[Dcminrange(2) 2*a1]);
Dmin = params(1);
a = params(2);

%% plot

scatter(Dc,CBA,'k');
hold on;
     
plot([20 Dmin],[0 0],'r','linewidth',2);
plot([Dmin max(Dc)],[0 a*(max(Dc)-Dmin)],'r','linewidth',2);

%% uncertainty estimation using bootstrp?




