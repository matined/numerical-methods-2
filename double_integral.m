function result = double_integral(f, a, b, c, d, n)
    % Calculates the double integral of function f(x, y)
    % on the plane D = [a, b] x [c, d]
    %
    % Args:
    %   f: function - f(x, y) to integrate
    %   a: int - lower bound of the interval [a, b]
    %   b: int - upper bound of the interval [a, b]
    %   c: int - lower bound of the interval [c, d]
    %   d: int - upper bound of the interval [c, d]
    %   n: int - number of intervals

    % Generate midpoints for x and y
    x_mid = generate_midpoints(a, b, n);
    y_mid = generate_midpoints(c, d, n);
    
    % Calculate step sizes
    dx = (b - a) / n;
    dy = (d - c) / n;
    
    % Initialize sum
    sum = 0;
    
    % Double loop to sum over all rectangles
    for i = 1:length(x_mid)
        for j = 1:length(y_mid)
            sum = sum + f(x_mid(i), y_mid(j)) * dx * dy;
        end
    end
    
    result = sum;
end
