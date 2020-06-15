%----------------------------------------------------------------------------------------------------------------------------------------
%ENGR-111-504
%Find The Joker Game Project
%Column Validation Function File
%----------------------------------------------------------------------------------------------------------------------------------------
function y=ColumnCheck(ColumnInput) %This function validates the user's column guess
 %In this case, y is an output. However, y is not a value that will be used
 %in the main code, this function is just a condition that checks the
 %validity of the user input.
 %A function must contain an output argument, hence the use of y.
if ColumnInput>9                                 %Checking for valid row input
    disp('Out of range! There are 9 columns.');  %Text message saying that the input is out of range, the game ends in this case
    y=0;
    return 
   elseif ColumnInput<=0
   disp('Out of range! There are 9 columns.');   %Text message saying that the input is out of range, the game ends in this case
   y=0;
   return
   elseif ColumnInput~=floor(ColumnInput)        %Checking if the value is an integer in case if the input was within the range
   disp('Invalid input, the input must be an integer between 1 and 9.'); %Text message saying that the input is invalid
   y=0;
   return
   elseif isempty(ColumnInput)
   disp('The input is blank. You have to enter a value between 1 and 9.');
   y=0;
   return
else                                                
       y=1;                                      %The validity check in this case is complete and a feedback of y=1 is given
   end
end
%---------------------------------------------------------------END-------------------------------------------------------------------