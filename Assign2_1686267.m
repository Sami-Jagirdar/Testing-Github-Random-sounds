%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 2
% Name: Syed Sami Ahmed Jagirdar
% CCID: jagirdar
% U of A ID: 1686267
% Acknowledgements:
% Referred to Lab 3 recorded zoom video for help on using selection
% statements
%
% Description:
% This program contains four rules which can be used to crack the
% secret code to save Maverick the co-op student.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc; clear

code_to_break = input('Please enter the code to break: ','s');              %Asking user to input code
sum=0;
if length(code_to_break) ~= 6                                               %Checking if the code is 6 digits long
    disp(' Decoy Message: Not a 6 digit  number ')
    
else
    
    for i = 1:6                                                             %Using for loop to find the sum of the digits of the code
        sum = sum + str2num(code_to_break(i));
    end
    
    if mod(sum,2) ~= 0                                                      %Checking if the sum is even or odd
        disp(' Decoy Message: The sum is odd ')
        
    else
        y = str2double(code_to_break(1))*str2double(code_to_break(2))-str2double(code_to_break(3));
        res_day=0;
        
        switch y                                                             %Using switch statement to check for the rescue day based on
            case 1                                                          %the arithmetic operations done on the first 3 digits of the code
                res_day = 'Monday';
            case 2
                res_day = 'Tuesday';
            case 3
                res_day = 'Wednesday';
            case 4
                res_day = 'Thursday';
            case 5
                res_day = 'Friday';
            case 6
                res_day = 'Saturday';
            case 7
                res_day = 'Sunday';
            otherwise
                disp(' Decoy message: Invalid rescue day')
        end
        
        if res_day~=0
            
            if mod(str2double(code_to_break(4)),3) == 0                         %Checking if the 4th digit of the code is divisible by 3
               s = str2double(code_to_break(5)) - str2double(code_to_break(6)); %and doing operations on the 5th and 6th digits accordingly
            else
               s = str2double(code_to_break(6)) - str2double(code_to_break(5));
            end
            
            ren_point = '0';
            
            switch s                                                          %Using switch statements to check for the rendezvous point based
                case 1                                                        % on the arithmetic operations done on the 5th and 6th digits
                    ren_point = 'the bridge';
                case 2
                    ren_point = 'the library';
                case 3
                    ren_point = 'the river crossing';
                case 4
                    ren_point = 'the airport';
                case 5
                    ren_point = 'the bus terminal';
                case 6
                    ren_point = 'the hospital';
                case 7
                    ren_point = 'St. Petes Church';
                otherwise
                    disp('Decoy Message: Invalid rendezvous point')
            end
            
            if ren_point ~='0'
                fprintf('Rescue on %s at %s \n', res_day, ren_point)        %displaying the rescue day and rendezvous point if the
            end                                                             %inputted code meets all requirements
            
        end
        
    end
    
end








   