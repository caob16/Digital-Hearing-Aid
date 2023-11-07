%current : current channel vector
%previous: the previous channel vector
%difference: if the difference between current and previous is less than
%this value, then reduce the magnitude
function output = anc_magVer(current, previous, difference)
if length(current) > length(previous) 
    len = length(previous);
else 
    len = length(current);
end
for i = 1 : len
    if abs(current(i,1) - previous(i,1)) < difference
        current(i,1) = current(i,1) / 10;
        current(i,2) = current(i,2) / 10;
    end
end
output = current;