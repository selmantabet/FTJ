%----------------------------------------------------------------------------------------------------------------------------------------
%ENGR-111-504
%Find The Joker Game Project
%Difficulty Validation Function File
%----------------------------------------------------------------------------------------------------------------------------------------
function AttemptsPermitted=DifficultyCheck(d)    %Function is defined, the output is the Attempts permitted and the input is the difficulty set.
%This function validates the user input


if d>9                                           %Checking for valid difficulty set input
    disp('Out of range! There are 8 difficulty sets.');                       %Text message saying that the input is out of range
    AttemptsPermitted=0;                         %The function returns 0 and will therefore terminate the game
    return
elseif d==9
    run FindTheJokerStats
    AttemptsPermitted=0;    
    return
elseif d<=0
    disp('Out of range! There are 8 difficulty sets.');                       %Text message saying that the input is out of range
    AttemptsPermitted=0;                         %The function returns 0 and will therefore terminate the game
    return
elseif d~=floor(d)                               %Checking if the value is an integer in case if the input was within the range
    disp('Invalid input, the input must be an integer between 1 and 8.'); %Text message saying that the input is invalid
    AttemptsPermitted=0;                         %The function returns 0 and will therefore terminate the game
    return
else
end
    AttemptsPermitted=d*5;                       %If the input is valid, the Attempts Permitted is evaluated
    return 
end
%-----------------------------------------------------------------END------------------------------------------------------------------