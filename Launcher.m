clc; clear; close all
%----------------------------------------------------------------------------------------------------------------------------------------
%ENGR-111-504
%Find The Joker Game Project
%Launcher File
%------------------------------------------------------Main Menu-----------------------------------------------------------------
disp('             ______ _____ _   _______   _____ _   _  _____     ___  _____ _   __ ___________ ');
pause(0.01)
disp('             |  ___|_   _| \ | |  _  \ |_   _| | | ||  ___|   |_  ||  _  | | / /|  ___| ___ \');
pause(0.01)
disp('             | |_    | | |  \| | | | |   | | | |_| || |__       | || | | | |/ / | |__ | |_/ /');
pause(0.01)
disp('             |  _|   | | | . ` | | | |   | | |  _  ||  __|      | || | | |    \ |  __||    / ');
pause(0.01)
disp('             | |    _| |_| |\  | |/ /    | | | | | || |___  /\__/ /\ \_/ / |\  \| |___| |\ \ ');
pause(0.01)
disp('             \_|    \___/\_| \_/___/     \_/ \_| |_/\____/  \____/  \___/\_| \_/\____/\_| \_|');
disp('           ');
disp('                          Created by: Selmane Tabet, Omar Ijaz and Karam Abulrub');
disp('                                 A Texas A&M at Qatar ENGR-111 Project');
disp(' ');
pause(2)
disp('Choose one of the following options (input the option number)');

disp('1-Play');
disp('2-How to play');
disp('3-About');
disp('4-Quit');
disp('   ');
%-----------------------------------------------------Option processing-------------------------------------------------------------------------------
Response=input('Option number: ');
if Response==1
    run Main                              %This will execute the main file
elseif Response==2                        %This will display a text containing the instructions
    disp('  ');
    disp('How to play:')
    pause(1)
    disp('The objective of the game is to find the Joker card hidden in an array of 54 elements. The game starts by asking you to input a difficulty set.');
    pause(2)
    disp('You input should be an integer between 1 and 8. Your difficulty set is then multiplied by a factor of 5 to give the number of attempts allowed');
    pause(4)
    disp('i.e. the lower the difficulty set the less attempts you will get and therefore the game becomes harder.');
    pause(2)
    disp('The game will then ask you to input a row number between 1 and 6 (going down the array). Then the game will ask you to input a column number');
    pause(4)
    disp('between 1 and 9 (from left to right). Your row and column inputs will represent the location of the card in the array.');
    pause(3)
    disp('A wrong guess will be marked by the number 1. Finding the Joker will win you the game. However, the game has its twist');
    pause(3)
    disp('a blank card is also hidden within the array, finding the blank card will lead to a loss.');
    pause(2.5)
    disp('Bar charts of the game chances of winning on each Difficulty set may be retrieved.');
    pause(2.5)
    disp('For more information about the game, refer to the developers mentioned above.');
    disp(' ');
    disp('Do you want to play? Answer with the number 1 for Yes and 2 for No'); %After reading the instructions, the user will then respond to this if he/she want to play
   
Response2=input('Response: '); %In the case when the player chooses to view the instructions, they will be prompted to input a response to whether they want to play or not

if Response2==1
    run Main
else
    clc; clear; close all                %If the user puts in any value other than one, the game automatically closes
end
elseif Response==3
    disp('FIND THE JOKER is an ENGR-111 Project based in Texas A&M University at Qatar');
    pause(2)
    disp('Instructor: Dr. Beena Ahmed');
    pause(2)
    disp('Teaching Assisstant: Mr. Ali Aljaani');
    pause(2)
    disp('Principal coder and director: Selmane Tabet');
    pause(2)
    disp('Assisstant coder 1: Omar Ijaz');
    pause(2)
    disp('Assisstant coder 2: Karam Abulrub');
    pause(2)
    disp('Special thanks to Mr. Ali Aljaani for helping the team throughout the game development process');
    disp(' ');
    pause(3)
    disp('Do you want to play? Answer with the number 1 for Yes and 2 for No');
    Response3=input('Response: ');
    if Response3==1
        run Main
    else
        clc; clear; close all
    end
elseif Response==4
    clc; clear; close all                %This will close the program and clear the window
else
end
%----------------------------------------------------------------END--------------------------------------------------------------------