For parts #1 and #2, I wrote this code after the starting script given to us. The full script is attached in the same folder

After the subplot axes setup at the end of the script, while in the same nested forloop:


     zslice = data(:,:,sliceNumber);
     imagesc(zslice);
     %%%%%%% This part is unique to part 2 of the question, removing it will result in just part 1%%%%%%%%
     BW = imbinarize(zslice);
     objects = bwboundaries(BW,'noholes'); %delineate boundary
     hold on;
     for j = 1:length(objects)
             contour = objects{j};
             plot(contour(:,2), contour(:,1), 'r', 'LineWidth', 4); %generate figure with highlighted boundary
     end
     %%%%%%%%%%%%%%%
    if(sliceNumber == 13)
        set(gca, 'XTick', [20 40 60], 'YTick', [10 20 30 40]);
    elseif(sliceNumber == 14 || sliceNumber == 15 || sliceNumber == 16)
        set(gca, 'XTick', [20 40 60],'YTick', [] );
    elseif (sliceNumber == 1 || sliceNumber == 5 || sliceNumber == 9 || sliceNumber == 13)
        set(gca, 'XTick', [], 'YTick', [10 20 30 40]);
    else
        set(gca, 'XTick', [], 'YTick', []);
    end
    title(['z = ' num2str(sliceNumber)]);
    caxis([0 3.5*10^4]);
    hold on;
