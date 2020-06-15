clc; clear; close all

%ENGR-111-504
%Find The Joker Game Project
%Main loop and user input processing file

run 'MatrixRandomization'                       %Executing the Main Field generator

disp('Enter a difficulty set between 1 to 8 (the lower the harder):'); %Difficulty set prompt
disp('   ');
disp('1- The Great Hacker');
disp('2- Master Wizard');
disp('3- Fortune Teller');
disp('4- Challenger');
disp('5- Feeling lucky?');
disp('6- Casual Gambler');
disp('7- Looking for fun?');
disp('8- Feeling unlucky?');
disp('   ');
d=input('Choose your difficulty set: ');

if isempty(d)
    disp('The input is blank. You have to enter a value between 1 and 8.');
    break
end
AttemptsPermitted=DifficultyCheck(d);          %Calling a function to validate the difficulty set input and evaluate the attempts permitted if valid

for Attempt=1:AttemptsPermitted                %Beginning of the loop, the loop runs depending on the player's input and his/her choice of difficulty set
    %Note that the text "Oops! Try again!" should not be displayed on the
    %last failing attempt, hence the creation of the last conditional
    %statement
    RemainingAttempts=AttemptsPermitted-Attempt+1; %The remaining attempts to be displayed to the player
    fprintf('Remaining attempts: %i           ',RemainingAttempts); %Displaying the number of remaining attempts
    disp('    ');                               %A space to make the command window neat

RowInput=input('Enter row number between 1 and 6:');          %Row guess prompt
   if isempty(RowInput)
   disp('The input is blank. You have to enter a value between 1 and 6.');
   break
   end
   x=RowCheck(RowInput);                         %Calling a function to validate the row input
   if x==0                                       %If the function returns 0, the game ends
   break
   else                                          %Otherwise, the input is validated and the program runs normally
   end


ColumnInput=input('Enter column number between 1 and 9:');      %Column guess prompt
 if isempty(ColumnInput)
   disp('The input is blank. You have to enter a value between 1 and 9.');
   break
   end
  y=ColumnCheck(ColumnInput);                    %Calling a function to validate the column input
   if y==0                                       %If the function returns 0, the game ends
   break
   else                                          %Otherwise, the input is validated and the program runs normally
   end

 Solution=ActualMatrix(RowInput,ColumnInput);    %The coordinate chosen is taken to address an element in the hidden matrix
   
   if Solution==9                                %This checks if the wrong guess (value of 9) has been entered
       clc                                       %Clears the window for another attempt
disp(ActualMatrix);                              %FOR DEVELOPMENT USE ONLY, this reveals the Actual Matrix on the command window.
       MainField(RowInput,ColumnInput)=1;        %The discovered element is then changed from 0 to 1 into the Main Field
       disp(MainField);                          %The updated Main Field is now shown with the 1 instead of 0 on the previously guessed coordinate
       disp('Oops! Try Again.');                  %Text message telling the player to try again
   elseif Solution==8                            %Compares when the solution is equals to the Joker value of 8
      disp('Good job! You have found the Joker! Congratulations!'); %Text message telling the player that the objective is complete
   break                                         %The game ends when the objective has been achieved
   else                                          %The last case when the targeted value is 7 (The Blank card)
      disp('You have found a blank card! You lost, better luck next time!');   %Text message telling that the player have lost the game
   break                                         %The game ends when the Blank card is chosen
   end                                           %End of the if conditional statements
end                                              %End of the loop
 if AttemptsPermitted==0                         %Since this 'if' statement is out of the 'for' loop above, AttemptsPermitted should be equal to 0
     %and terminate the game, otherwise, a MATLAB error code will be given.
     break
 end
 if Solution==9                              %This is executed in case the player runs out of attempts
     disp('You ran out of attempts. Better luck next time!'); %Text message telling that the player have lost the game
 else
 end
disp(ActualMatrix);                              %The actual matrix is finally revealed
disp('Game over!');                              %Text message informing the player that the game is over

disp('Try again? (Answer with the number 1 for Yes and 2 for No)'); %Requesting the player to play again
Retry=input('Response: ')
if Retry==1
    run Main                                     %This restarts the game
else
     clc; clear; close all                       %This clears the window
end
