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

media_passos_w_x=0;
media_passos_w_y=0;
media_passos_w_z=0;

media_passos_wu_x=0;
media_passos_wu_y=0;
media_passos_wu_z=0;

media_passos_wd_x=0;
media_passos_wd_y=0;
media_passos_wd_z=0;

vetor_media_passos_w_x=[];
vetor_media_passos_w_y=[];
vetor_media_passos_w_z=[];

vetor_media_passos_wu_x=[];
vetor_media_passos_wu_y=[];
vetor_media_passos_wu_z=[];

vetor_media_passos_wd_x=[];
vetor_media_passos_wd_y=[];
vetor_media_passos_wd_z=[];

l1=label(1);
[accX_l1, accY_l1, accZ_l1]=graficos('acc-exp01-user01.txt', A, 1, l1);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp01-user01.txt ACC-X', accX_l1, 11, l1);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp01-user01.txt ACC-Y', accY_l1, 12, l1);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp01-user01.txt ACC-Z', accZ_l1, 13, l1);

media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l2=label(2);
[accX_l2, accY_l2, accZ_l2]=graficos('acc-exp02-user01.txt', B, 2, l2);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp02-user01.txt ACC-X', accX_l2, 14, l2);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp02-user01.txt ACC-Y', accY_l2, 15, l2);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp02-user01.txt ACC-Z', accZ_l2, 16, l2);

media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l3=label(3);
[accX_l3, accY_l3, accZ_l3]=graficos('acc-exp03-user02.txt', C, 3, l3);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp03-user02.txt ACC-X', accX_l3, 17, l3);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp03-user02.txt ACC-Y', accY_l3, 18, l3);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp03-user02.txt ACC-Z', accZ_l3, 19, l3);

media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l4=label (4);
[accX_l4, accY_l4, accZ_l4]=graficos('acc-exp04-user02.txt', D, 4, l4);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp04-user02.txt ACC-X', accX_l4, 20, l4);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp04-user02.txt ACC-Y', accY_l4, 21, l4);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp04-user02.txt ACC-Z', accZ_l4, 22, l4);

media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l5=label (5);
[accX_l5, accY_l5, accZ_l5]=graficos('acc-exp05-user03.txt', E, 5, l5);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp05-user03.txt ACC-X', accX_l5, 23, l5);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp05-user03.txt ACC-Y', accY_l5, 24, l5);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp05-user03.txt ACC-Z', accZ_l5, 25, l5);

media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l6=label(6);
[accX_l6, accY_l6, accZ_l6]=graficos('acc-exp06-user03.txt', F, 6, l6);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp05-user03.txt ACC-X', accX_l6, 26, l6);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp05-user03.txt ACC-Y', accY_l6, 27, l6);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp05-user03.txt ACC-Z', accZ_l6, 28, l6);

media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l7=label (7);
[accX_l7, accY_l7, accZ_l7]=graficos('acc-exp07-user04.txt', G, 7, l7);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp07-user04.txt ACC-X', accX_l7, 29, l7);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp07-user04.txt ACC-Y', accY_l7, 30, l7);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp07-user04.txt ACC-Z', accZ_l7, 31, l7);
 
media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l8=label (8);
[accX_l8, accY_l8, accZ_l8]=graficos('acc-exp08-user04.txt', H, 8, l8);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp08-user04.txt ACC-X', accX_l8, 32, l8);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp08-user04.txt ACC-Y', accY_l8, 33, l8);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp08-user04.txt ACC-Z', accZ_l8, 34, l8);
 
media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l9=label (9);
[accX_l9, accY_l9, accZ_l9]=graficos('acc-exp09-user05.txt', I, 9, l9);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp09-user05.txt ACC-X', accX_l9, 35, l9);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp09-user05.txt ACC-Y', accY_l9, 36, l9);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp09-user05.txt ACC-Z', accZ_l9, 37, l9);
 
media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

l10=label (10);
[accX_l10, accY_l10, accZ_l10]=graficos('acc-exp10-user05.txt', J, 10, l10);
[media_passos_w_acc_x, media_passos_wu_acc_x, media_passos_wd_acc_x] = analiseGrafica('acc-exp10-user05.txt ACC-X', accX_l10, 38, l10);
[media_passos_w_acc_y, media_passos_wu_acc_y, media_passos_wd_acc_y] = analiseGrafica('acc-exp10-user05.txt ACC-Y', accY_l10, 39, l10);
[media_passos_w_acc_z, media_passos_wu_acc_z, media_passos_wd_acc_z] = analiseGrafica('acc-exp10-user05.txt ACC-Z', accZ_l10, 40, l10);

media_passos_w_x=media_passos_w_x+media_passos_w_acc_x;
media_passos_w_y=media_passos_w_y+media_passos_w_acc_y;
media_passos_w_z=media_passos_w_z+media_passos_w_acc_z;

media_passos_wu_x=media_passos_wu_x+media_passos_wu_acc_x;
media_passos_wu_y=media_passos_wu_y+media_passos_wu_acc_y;
media_passos_wu_z=media_passos_wu_z+media_passos_wu_acc_z;

media_passos_wd_x=media_passos_wd_x+media_passos_wd_acc_x;
media_passos_wd_y=media_passos_wd_y+media_passos_wd_acc_y;
media_passos_wd_z=media_passos_wd_z+media_passos_wd_acc_z;

vetor_media_passos_w_x=[vetor_media_passos_w_x; media_passos_w_acc_x];
vetor_media_passos_w_y=[vetor_media_passos_w_y; media_passos_w_acc_y];
vetor_media_passos_w_z=[vetor_media_passos_w_z; media_passos_w_acc_z];

vetor_media_passos_wu_x=[vetor_media_passos_wu_x; media_passos_wu_acc_x];
vetor_media_passos_wu_y=[vetor_media_passos_wu_y; media_passos_wu_acc_y];
vetor_media_passos_wu_z=[vetor_media_passos_wu_z; media_passos_wu_acc_z];

vetor_media_passos_wd_x=[vetor_media_passos_wd_x; media_passos_wd_acc_x];
vetor_media_passos_wd_y=[vetor_media_passos_wd_y; media_passos_wd_acc_y];
vetor_media_passos_wd_z=[vetor_media_passos_wd_z; media_passos_wd_acc_z];

num = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];

T = table(num,vetor_media_passos_w_x, vetor_media_passos_w_y, vetor_media_passos_w_z, vetor_media_passos_wu_x, vetor_media_passos_wu_y, vetor_media_passos_wu_z, vetor_media_passos_wd_x, vetor_media_passos_wd_y, vetor_media_passos_wd_z,'VariableNames',{'Numero','MediaPassosWemX', 'MediaPassosWemY', 'MediaPassosWemZ', 'MediaPassosWUemX', 'MediaPassosWUemY', 'MediaPassosWUemZ', 'MediaPassosWDemX', 'MediaPassosWDemY', 'MediaPassosWDemZ'})

fprintf('Media de passos de Walking em ACC_X: %.2f por min. \n', media_passos_w_x/10);
fprintf('Media de passos de Walking em ACC_Y: %.2f por min. \n', media_passos_w_y/10);
fprintf('Media de passos de Walking em ACC_Z: %.2f por min. \n', media_passos_w_z/10);

fprintf('Media de passos de Walking-Up em ACC_X: %.2f por min. \n', media_passos_wu_x/10);
fprintf('Media de passos de Walking-Up em ACC_Y: %.2f por min. \n', media_passos_wu_y/10);
fprintf('Media de passos de Walking-Up em ACC_Z: %.2f por min. \n', media_passos_wu_z/10);

fprintf('Media de passos de Walking-Down em ACC_X: %.2f por min. \n', media_passos_wd_x/10);
fprintf('Media de passos de Walking-Down em ACC_Y: %.2f por min. \n', media_passos_wd_y/10);
fprintf('Media de passos de Walking-Down em ACC_Z: %.2f por min. \n', media_passos_wd_z/10);