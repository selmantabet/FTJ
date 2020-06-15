

clc; clear; close all

%ENGR-111-504
%Find The Joker Game Project
%Matrix Randomization Script File

MainField=zeros(6,9); %Setting up an array filled with zeroes for the user to play
disp(MainField);

%Creating original matrix which will be randomly place the Joker and the
%Blank cards

a=[9 9 9 9 9 9 9 9 9];
ActualMatrix=[a;a;a;a;a;a];                       %Creating a 6-9 matrix with all "9's"

Joker=8;                                          %Assigning the Joker a value of '8'

Blank=7;                                          %Assigning the Blank a value of '7'

%Instructing MATLAB to select a random number between 1 to 9 for each card with an increment of 1:

%Joker
JokerRow=randi([1,6],1,1);                   %Random number between 1-6 for row               
JokerColumn=randi([1,9],1,1);               %Random number between 1-9 for coloumn              

%Blank
BlankRow=randi([1,6],1,1);                   %Random number between 1-6 for row
BlankColumn=randi([1,9],1,1);               %Random number between 1-9 for column

%Assigning the value 8 for the randomly generated row & column numbers for
%The Joker
ActualMatrix(JokerRow,JokerColumn)=Joker;

%Assigning the value 7 for the randomly generated row & column numbers for
%The Blank
ActualMatrix(BlankRow,BlankColumn)=Blank;


disp(ActualMatrix); %FOR DEVELOPMENT USE ONLY, this reveals the Actual Matrix on the command window.





