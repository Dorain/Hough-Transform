function [H] = computeH(points, new_points)
A=[];
new_points = new_points';
points = points';
for i = 1:4
    A = [A; -new_points(1, i), -new_points(2, i), -1, 0, 0, 0, points(1, i)...
        * new_points(1, i), points(1, i) * new_points(2, i), points(1, i)];
    A = [A; 0, 0, 0, -new_points(1, i), -new_points(2, i), -1, points(2, i)...
        * new_points(1, i), points(2, i) * new_points(2, i), points(2, i)];
end
[~, ~, V] = svd(A);
H=V(:, size(V, 2)); 
H = reshape(H, 3, 3); 
H=H';

end
