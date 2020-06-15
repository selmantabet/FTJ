%----------------------------------------------------------------------------------------------------------------------------------------
%ENGR-111-504
%Find The Joker Game Project
%Row Validation Function File
%----------------------------------------------------------------------------------------------------------------------------------------
function x=RowCheck(RowInput) %This function validates the user's row guess
 %In this case, x is an output. However, x is not a value that will be used
 %in the main code, this function is just a condition that checks the
 %validity of the user input.
 %A function must contain an output argument, hence the use of x.
if RowInput>6                                    %Checking for valid row input
    disp('Out of range! There are 6 rows.');     %Text message saying that the input is out of range, the game ends in this case
    x=0;
    return 
   elseif RowInput<=0
   disp('Out of range! There are 6 rows.');      %Text message saying that the input is out of range, the game ends in this case
   x=0;
   return
   elseif RowInput~=floor(RowInput)              %Checking if the value is an integer in case if the input was within the range
   disp('Invalid input, the input must be an integer between 1 and 6.'); %Text message saying that the input is invalid
   x=0;
   return
   elseif isempty(RowInput)
   disp('The input is blank. You have to enter a value between 1 and 6.');
   x=0;
   return
else
       x=1;                                      %The validity check in this case is complete and a feedback of x=1 is given
   end
end
%------------------------------------------------------------END-------------------------------------------------------------------------