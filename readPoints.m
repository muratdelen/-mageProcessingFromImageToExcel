function [pts, questionOptionTitle] = readPoints(seceneklerTable, seceneklerRowCount, selectedQuestionOptionCountOrder, SelectedQuestionOptionCount)
    selectedOption = "";
    pts = zeros(SelectedQuestionOptionCount, 4);
    xold = 0;
    yold = 0;
    k = 0;
    pointCount = 0;
    hold on;           % and keep it there while we plot
    while 1
        [xd, yd, but] = ginput(1);      % get a point
        xi = round(xd);
        yi = round(yd);
        if ~isequal(but, 1)             % stop if not button 1
            break
        end
        plot(xi, yi,'-s','MarkerFaceColor','red','MarkerSize',5);
        k = k + 1;
    
        if mod(k,2) == 0 
            pointCount = pointCount + 1;
            selectedQuestionOptionCountOrder = selectedQuestionOptionCountOrder + 1;
            if selectedQuestionOptionCountOrder > seceneklerRowCount
                Response = inputdlg({'Add Option Text'},'Option Name:',[1 50], "");
            else
                selectedOption = seceneklerTable(selectedQuestionOptionCountOrder,3);
                Response = inputdlg({'Add Option Text'},'Option Name:',[1 50], selectedOption);    
            end
              if ~isempty(Response)
                 questionOptionTitle(pointCount) = string(Response(1));
              end
            if xold >= xi && yold >= yi
                pts(pointCount,:) = [xi , yi, (xold - xi ) , (yold - yi)];
            elseif xold >= xi && yold < yi
                pts(pointCount,:) = [xi , yold, (xold - xi ) , (yi - yold)];
            elseif xold < xi && yold >= yi
                pts(pointCount,:) = [xold , yi, (xi - xold) , (yold - yi)];
            else %xold < xi && yold < yi
                pts(pointCount,:) = [xold , yold, (xi - xold ) , (yi - yold)];
            end
            rectangle('Position',pts(pointCount,:), 'EdgeColor','green');
        end
          if isequal(pointCount, SelectedQuestionOptionCount)
              break
          end
          xold = xi;
          yold = yi;
      end
        
      hold off;
      if k < size(pts,2)
           pts = pts(:, 1:k);
      end
end