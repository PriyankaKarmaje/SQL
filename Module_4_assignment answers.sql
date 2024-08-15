/* Module-4 Assignment */

/* Use the inbuilt functions and find the minimum, maximum and average amount from the orders 
table */

Select 
MIN(Amount) as Minimum_amount, 
MAX(Amount) as Maximum_amount,
AVG(Amount) as Average_amount from Orders;

/* Create a user-defined function, which will multiply the given number with 10 */

Create function Multiply (@value int)
returns int
as
begin
	return @value * 10
end

Select[dbo].[Multiply] (15) -- 15 is the value to be given that to be multiplied
Select[dbo].[Multiply] (78) as result --to give the column name as result

-- to multiply all amount at a time in order table

Select Amount as Actual_amount, [dbo].[Multiply](Amount) as Multiplied_Amount from Orders

/* Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and 
print the corresponding value */

Select
case
when 100 < 200 then '200 is Greater and 100 is Lesser'
when 100 > 200 then '100 is Greater and 200 is Lesser'
when 100 = 200 then 'Both 100 and 200 are Equal'
end





