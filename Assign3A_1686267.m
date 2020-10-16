%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 3
% Name: Syed Sami Ahmed Jagirdar
% CCID: jagirdar
% U of A ID: 1686267
%
% Acknowledgements:
% Watched Lab 3 Zoom presentation video for help with storing values in
% arrays using for loops
%
% Description:
% This program calculates savings for college education.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;clear

%Prompting the user to input a number corresponding to the program they
%want to select
program = input('Select a program: 1. Arts; 2. Science; 3. Engineering: ');

%Initializing a vector that will store the saved balance for each month and
%using a for loop to calculate the monthly savings stored in the vector
amt = zeros(1,216);
amt(1) = 2000;
for i = 2:216
    amt(i) = amt(i-1)*(1+(0.0625/12)) + 200;
end

fprintf('At the end of 18 years, you will have saved $%4.2f \n' , amt(216))

%Initializing 3 vecotrs for each of the program that will store the tuiton
%fees for each year and using a for loop to calculate the yearly fees
fee_arts = zeros(1,22);
fee_science = zeros(1,22);
fee_engineering = zeros(1,22);

fee_arts(1) = 5550;
fee_science(1) = 6100;
fee_engineering(1) = 6550;

for j = 2:22
    fee_arts(j) = fee_arts(j-1)*(1+0.07);
    fee_science(j) = fee_science(j-1)*(1+0.07);
    fee_engineering(j) = fee_engineering(j-1)*(1+0.07);
    
end

%Finding the total tuition fee at the end of 18 years for a 4-year program
final_arts_fee = sum(fee_arts(19:22));
final_science_fee = sum(fee_science(19:22));
final_engineering_fee = sum(fee_engineering(19:22));

t = 0:(18/215):18 ;
arts_tuition = repmat(final_arts_fee,1,216);
science_tuition = repmat(final_science_fee,1,216);
engineering_tuition = repmat(final_engineering_fee,1,216);

%Using a switch statement to display the college tuition fee and 
%check if the total savings (balance) is enough to pay the tuition fee for 
%the chosen program and plotting a graph to see the visual difference 
%between the balance and the tuition fee.
switch program
    
    case 1
        fprintf('the cost of your 4-year college tuition fee is $%4.2f \n' , final_arts_fee)
        
        if amt(216) < final_arts_fee
            fprintf('The saving is $%4.2f short \n' , final_arts_fee-amt(216))
        else
            disp('Congratulations! You have saved enough. ')
        end

        plot(t, amt , 'g' , t, arts_tuition , 'b')
        title('College Savings vs Tuition fees')
        xlabel('Year')
        ylabel('Balance')
        
    case 2
        fprintf('the cost of your 4-year college tuition fee is $%4.2f \n' , final_science_fee)

        if amt(216) < final_science_fee
            fprintf('The saving is $%4.2f short \n' , final_science_fee-amt(216))
        else
            disp('Congratulations! You have saved enough. ')
        end

        plot(t, amt , 'g', t, science_tuition ,'b')
        title('College Savings vs Tuition fees')
        xlabel('Year')
        ylabel('Balance')
        
    case 3
        fprintf('the cost of your 4-year college tuition fee is $%4.2f \n' , final_engineering_fee)

        if amt(216) < final_engineering_fee
            fprintf('The saving is $%4.2f short \n' , final_engineering_fee-amt(216))
        else
            disp('Congratulations! You have saved enough.')
        end

        plot(t, amt , 'g' ,t, engineering_tuition , 'b')
        title('College Savings vs Tuition fees')
        xlabel('Year')
        ylabel('Balance')
        
    otherwise
        fprintf('Invalid number inputted \n')
        
end













