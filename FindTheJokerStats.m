clc; clear; close all
%----------------------------------------------------------------------------------------------------------------------------------------
%ENGR-111-504
%Find The Joker Game Project
%Game Statistics Bar Charts
%----------------------------------------------------------------------------------------------------------------------------------------
DifficultySet=[1:8];
WinProb=[9 17 24 30 36 40 44 47];
LossProb=[91 83 76 70 64 60 56 53];
Joker=WinProb;
Blank=Joker;
ROA=LossProb-WinProb;
%-------------------------------------------------------Plotting the Win Vs. Loss probabilities-------------------------------------------------------
subplot(1,2,1);
w2=0.50;
bar(DifficultySet,LossProb,w2,'r')
w1=0.2;
hold on
bar(DifficultySet,WinProb,w1,'g');
hold off
xlabel('Difficulty Set')
ylabel('Probability Percentage')
legend('Losing','Winning')
title('Chances of winning and losing')
%----------------------------------Plotting the chances between of finding a special card and losing by running out of attempts-----------------------------------------------
subplot(1,2,2);
w3=0.5;
bar(DifficultySet,ROA,w3,'r');
w4=0.2;
hold on
bar(DifficultySet,Blank,w4,'c');
xlabel('Difficulty Set')
ylabel('Probability Percentage')
legend('Running out of attempts','Joker or Blank')
title('Chances of running out of attempts or pick a Joker/Blank card')
%---------------------------------------------------------------------END---------------------------------------------------------------------------------------