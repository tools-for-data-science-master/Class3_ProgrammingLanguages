%% create a variable (matrix or chars)
% Variable name: First character must be a letter, case-sensentive
number = 3.14;
Number = pi;
Number2 = inf;
Number3 = NaN;
String = 'hello world!';

% display the string
disp(String);

%%
% create a row vector
row = [ 1 2 3.2 4 6 5.4 ];
size(row)

% transpose the row vector
column = row';
size(column)

a = [1 2];
b = [3 4];
c = [5;6];
d = [a;b];
e = [d c];
f = [[e e];[a b a]];

str = ['Hello, I am ' 'John'];
str2 = {'Hello, I am '; 'John'};
str3 = char(strcat(str2(1), 'K'));
save('Code1.mat');

%% save and load

clear
load Code1.mat

%% Numerical operators
7/45
(1+1i)*(1+2i) 
1/0
1/0
4^2
(3+4*1j)^2
((2+3)*3)^0.1

% use build-in math functions
sqrt(2)
log(2)
log10(0.23)
cos(1.2)
atan(-.8)
exp(2+4*1i)
round(1.4)
floor(3.3)
ceil(4.23)
angle(1i)
abs(1+1i)

%
g = a+b
h = sum(a)
k = prod(a)
g = exp(a)


% element-wise functions .*, .^,./

a=[1 2 3];b=[4;2;1]; 
a*b
a.*b'
a./b'
a.^(b') 
%%
% indexing

c=[12 13 ; 5 8];
% pick up sub-matrix
d=c(1,:); 
e=c(:,2); 
c(2,:)=[3 6]; %replaces second row of c

vec = [5 3 1 9 7];

% relational operators: ==, >=, ~=
% logical operators: &&, ||, xor, all, any

ind = find(vec == 9); vec(ind) = 8;
% find expressionscan be very complex,moreon this later
% When possible, logical indexing is fasterthan find!
vec(vec==9) = 8;



