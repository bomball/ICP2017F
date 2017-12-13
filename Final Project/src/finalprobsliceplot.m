function finalprobsliceplot(cells)
for i = 1:7
    % 10,12,14,16,18,20,22
    brainsliceplot(cells(:,:,:,i),10+2*(i-1));   % 10 + 2*(i-1) gives the correct day at the time location
end
end