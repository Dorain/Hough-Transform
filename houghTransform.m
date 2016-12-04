function [ ht ] = houghTransform( ed, dis, step  )

ht = zeros(2*dis,180/step+1);
for e = 1: size(ed,1)
    for theta = step:step:180
        x = ed(e,1);
        y = ed(e,2);
%         d = fix(abs((cosd(theta) *x + sind(theta) * y)));
        d = fix(cosd(theta) *x + sind(theta) * y);
        deg= theta/step; 
        ht(d+dis, deg) = ht(d+dis, deg)+1;
    end
end


end

