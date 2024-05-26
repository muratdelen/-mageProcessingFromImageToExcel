
% create excel column name from integer array
function columnName = createExcelColumnName(row, num) 
    raw = 'A':'Z';
    columnName = raw(1+rem(num-1,26));
    tmp = fix((num-1)/26);
    while any(tmp)
        columnName = [raw(1+rem(tmp-1,26)), columnName]; 
        tmp = fix((tmp-1)/26);
    end
    columnName = string(columnName) + string(row);
end