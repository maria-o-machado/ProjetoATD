clear
close all

%acc_exp01_user01.txt
A = importdata('acc_exp01_user01.txt');
%acc_exp02_user01.txt
B = importdata('acc_exp02_user01.txt');
%acc_exp03_user02.txt
C = importdata('acc_exp03_user02.txt');
%acc_exp04_user02.txt
D = importdata('acc_exp04_user02.txt');
%acc_exp05_user03.txt
E = importdata('acc_exp05_user03.txt');
%acc_exp06_user03.txt
F = importdata('acc_exp06_user03.txt');
%acc_exp07_user04.txt
G = importdata('acc_exp07_user04.txt');
%acc_exp08_user04.txt
H = importdata('acc_exp08_user04.txt');
%acc_exp09_user05.txt
I = importdata('acc_exp09_user05.txt');
%acc_exp10_user05.txt
J = importdata('acc_exp10_user05.txt');

l1=label (1)
graficos('acc-exp01-user01.txt', A, 1, l1)

% l2=label (2);
% graficos('acc-exp02-user01.txt', B, 2, l2)
% 
% l3=label (3);
% graficos('acc-exp03-user02.txt', C, 3, l3)
% 
% l4=label (4);
% graficos('acc-exp04-user02.txt', D, 4, l4)
% 
% l5=label (5);
% graficos('acc-exp05-user03.txt', E, 5, l5)
% 
% l6=label (6);
% graficos('acc-exp06-user03.txt', F, 6, l6)
% 
% l7=label (7);
% graficos('acc-exp07-user04.txt', G, 7, l7)
% 
% l8=label (8);
% graficos('acc-exp08-user04.txt', H, 8, l8)
% 
% l9=label (9);
% graficos('acc-exp09-user05.txt', I, 9, l9)
% 
% l10=label (10);
% graficos('acc-exp10-user05.txt', J, 10, l10)
